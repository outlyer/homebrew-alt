class Rustnet < Formula
  desc "Cross-platform network monitoring terminal UI tool built with Rust."
  homepage "https://github.com/domcyrus/rustnet"
  url "https://github.com/domcyrus/rustnet/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "8ef826035a2d86f04718783d8f532be4eea4deea8b64817980a9c8b970e7380f"
  license "Apache"
  head "https://github.com/domcyrus/rustnet.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  #test do
  #end
end
