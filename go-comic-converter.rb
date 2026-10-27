class GoComicConverter < Formula
  desc "Convert CBZ/CBR/Dir into EPUB for e-reader devices (Kindle Devices, Apple Books, etc.)"
  homepage "https://github.com/celogeek/go-comic-converter"
  version "3.6.0"
  url "https://github.com/celogeek/go-comic-converter/archive/refs/tags/v#{version}.tar.gz"
  sha256 "4fb943f04abc53b5b74dcbf39848c77cc4012f4823db005d49a6007cb26c37e3"
  license "MIT"
  head "https://github.com/celogeek/go-comic-converter.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
    ]
    system "go", "build", *std_go_args(ldflags: "-X Main.Version=#{version}"), "main.go"
  end

end
