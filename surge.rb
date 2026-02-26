class Surge < Formula
  desc "Blazing fast TUI download manager built in Go for power users"
  homepage "https://github.com/surge-downloader/"
  version "0.6.9"
  url "https://github.com/surge-downloader/Surge/archive/refs/tags/v#{version}.tar.gz"
  sha256 "95b13483f130350ee1e44d51ab75c240e6c803cfbf669ea093f4441ce079ea5f"
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
