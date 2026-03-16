class Surge < Formula
  desc "Blazing fast TUI download manager built in Go for power users"
  homepage "https://github.com/surge-downloader/"
  version "0.6.10"
  url "https://github.com/surge-downloader/Surge/archive/refs/tags/v#{version}.tar.gz"
  sha256 "96e13de139d80222a5f3e923c05c91ff42bc86391bdf5b31a2eb77a61321d269"
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
