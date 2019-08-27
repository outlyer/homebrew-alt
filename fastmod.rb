class Fastmod < Formula
  desc "Tool to assist with large-scale codebase refactors with optional interventions."
  homepage "https://github.com/facebookincubator/fastmod"
  url "https://github.com/facebookincubator/fastmod/archive/v0.2.6.tar.gz"
  sha256 "b70f615e883cc6cc235b62ee15ec2ec7ef4b04618b42fb79d8ee807440f6cf3c"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "cargo","test","--manifest-path",(buildpath/"Cargo.toml")
  end
end
