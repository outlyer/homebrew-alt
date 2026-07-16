class Opensave < Formula
  desc "Sync your game saves between devices, peer-to-peer."
  homepage "https://github.com/celogeek/go-comic-converter"
  version "2.1.0"
  url "https://github.com/sivadaboi/OpenSave/archive/refs/tags/v#{version}.tar.gz"

  sha256 "9dbe324d1f763930fba00edaf8f0b4b89061f8866421cd30184869fe9d0420ed"
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
