class Jsongrep < Formula
  desc "A command-line tool and Rust library for fast querying of JSON documents using regular path expressions."
  homepage "https://github.com/micahkepe/jsongrep"
  version "0.7.0"
  url "https://github.com/micahkepe/jsongrep/archive/refs/tags/v#{version}.tar.gz"

  sha256 "2db5efbe33cdaba5b93d8a884baa12049b17174d839dce25480551a5fb358375"
  license "MIT"
  head "ttps://github.com/micahkepe/jsongrep/", branch: "main"

  depends_on "rust" => :build

  def install
   system "cargo", "install", *std_cargo_args
  end

end
