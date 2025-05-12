class GoComicConverter < Formula
  desc "Convert CBZ/CBR/Dir into EPUB for e-reader devices (Kindle Devices, Apple Books, etc.)"
  homepage "https://github.com/celogeek/go-comic-converter"
  version "3.0.2"
  url "https://github.com/celogeek/go-comic-converter/archive/refs/tags/v#{version}.tar.gz"
  sha256 "33249a8b3b33f286d0622bbb39c9bc00cbba193694a120eab713ba66fab38472"
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
