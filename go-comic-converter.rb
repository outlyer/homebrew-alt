class GoComicConverter < Formula
  desc "Convert CBZ/CBR/Dir into EPUB for e-reader devices (Kindle Devices, Apple Books, etc.)"
  homepage "https://github.com/celogeek/go-comic-converter"
  version "3.0.4"
  url "https://github.com/celogeek/go-comic-converter/archive/refs/tags/v#{version}.tar.gz"
  sha256 "c3a887d0f986c5a2b475b5245154d9d321ee4a25a212610d7398ac5d4e2f02d0"
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
