# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Libplacebo < Formula
  desc "Reusable library for GPU-accelerated image/video processing primitives and shaders, as well a batteries-included, extensible, high-quality rendering pipeline"
  homepage "https://code.videolan.org/videolan/libplacebo"
  license "LGPLv2"
  head "https://code.videolan.org/videolan/libplacebo.git"

  depends_on "meson" => :build
  depends_on "ninja" => :build
  depends_on "libepoxy"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    mkdir "build" do
      system "meson", *std_meson_args, ".."
      system "ninja", "-v"
      system "ninja", "install", "-v"
    end
  end

end
