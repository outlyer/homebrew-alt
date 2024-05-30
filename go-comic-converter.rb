class GoComicConverter < Formula
  desc "Convert CBZ/CBR/Dir into EPUB for e-reader devices (Kindle Devices, Apple Books, etc.)"
  homepage "https://github.com/celogeek/go-comic-converter"
  version "2.7.2"
  url "https://github.com/celogeek/go-comic-converter/archive/refs/tags/v#{version}.tar.gz"
  sha256 "2f0483741dd316e368f3169c5694adedd2b79b60476d716ce8f9d346b81030a0"
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
