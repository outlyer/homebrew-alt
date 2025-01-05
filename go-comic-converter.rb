class GoComicConverter < Formula
  desc "Convert CBZ/CBR/Dir into EPUB for e-reader devices (Kindle Devices, Apple Books, etc.)"
  homepage "https://github.com/celogeek/go-comic-converter"
  version "3.0.0"
  url "https://github.com/celogeek/go-comic-converter/archive/refs/tags/v#{version}.tar.gz"
  sha256 "76dc588268c63fcde6b575912979bb570f54cbf46650c8d7db1474f5a0d18b5b"
  license "MIT"
  head "https://github.com/celogeek/go-comic-converter.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
    ]
    system "go", "build", *std_go_args(ldflags:), "main.go"
  end

end
