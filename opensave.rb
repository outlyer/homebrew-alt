class Opensave < Formula
  desc "Sync your game saves between devices, peer-to-peer."
  homepage "https://github.com/celogeek/go-comic-converter"
  version "2.3.1"
  url "https://github.com/sivadaboi/OpenSave/archive/refs/tags/v#{version}.tar.gz"

  sha256 "fe28bcd0cace43459198ea0ee15dabcf88d847b4bf83ea49e0ba18de098d5bb0"
  license "MIT"
  head "https://github.com/sivadaboi/OpenSave", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
    ]
    system "go", "build", *std_go_args(ldflags:), "./cmd/opensave-cli"
  end

end
