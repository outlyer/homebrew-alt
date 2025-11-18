class Rustnet < Formula
  desc "Cross-platform network monitoring terminal UI tool built with Rust."
  homepage "https://github.com/domcyrus/rustnet"
  url "https://github.com/domcyrus/rustnet/archive/refs/tags/v0.15.0.tar.gz"
  sha256 "9fa251bbce11c4ff6f58ba57e08efbec94b2a031cd3d102d2ce45f0611d4f42e"
  license "Apache"
  head "https://github.com/domcyrus/rustnet.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  #test do
  #end
end
