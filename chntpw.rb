class Chntpw < Formula
  desc "Offline NT Password Editor"
  homepage "http://pogostick.net/~pnh/ntpasswd/"
  url "http://us.archive.ubuntu.com/ubuntu/pool/universe/c/chntpw/chntpw_140201.orig.tar.xz"
  sha256 "56849d366043a6335449cd83c6cd3cb31c041300ae17d388728b4c2a16d1f4ed"
  head "https://salsa.debian.org/debian/chntpw.git", branch: "master"

  def install
    system "make","chntpw"
    bin.install "chntpw"
  end

  test do
    assert_match "chntpw version 1.00 140201, (c) Petter N Hagen", shell_output("#{bin}/chntpw -h")
  end
end
