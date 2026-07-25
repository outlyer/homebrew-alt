class Opensave < Formula
  desc "Sync your game saves between devices, peer-to-peer."
  homepage "https://github.com/celogeek/go-comic-converter"
  version "2.1.1"
  url "https://github.com/sivadaboi/OpenSave/archive/refs/tags/v#{version}.tar.gz"

  sha256 "7a81aacbf2e63080ffc8e185cbaf439f94f4132505c503132f0dbdb2b2165c70"
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
