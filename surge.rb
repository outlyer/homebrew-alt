class Surge < Formula
  desc "Blazing fast TUI download manager built in Go for power users"
  homepage "https://github.com/surge-downloader/"
  version "0.6.10"
  url "https://github.com/surge-downloader/Surge/archive/refs/tags/v#{version}.tar.gz"
  sha256 "3cfb3cc68d360f370863f4d487b56ef56f920a3add0fb9d35da1ab3303a8d947"
  license "MIT"
  head "https://github.com/surge-downloader/", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
    ]
    system "go", "build", *std_go_args(ldflags:), "main.go"
  end

end
