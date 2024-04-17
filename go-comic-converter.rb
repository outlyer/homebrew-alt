class GoComicConverter < Formula
  desc "Convert CBZ/CBR/Dir into EPUB for e-reader devices (Kindle Devices, Apple Books, etc.)"
  homepage "https://github.com/celogeek/go-comic-converter"
  url "https://github.com/celogeek/go-comic-converter/archive/refs/tags/v2.6.9.tar.gz"
  sha256 "24fb457b355b8ce0645ddf02f660bd5f583b719a955d380c6c907de9941a5cf3"
  license "MIT"
  head "hhttps://github.com/celogeek/go-comic-converter.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "main.go"
  end

end
