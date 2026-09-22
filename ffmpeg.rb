class Ffmpeg < Formula
  desc "Play, record, convert, and stream audio and video"
  homepage "https://ffmpeg.org/"
  url "https://ffmpeg.org/releases/ffmpeg-9.0.1.tar.xz"
  sha256 "cf38e0e28c7e5605942c4a77755349b0145804a397af37eb1fb4c77cb237f635"
  # None of these parts are used by default, you have to explicitly pass `--enable-gpl`
  # to configure to activate them. In this case, FFmpeg's license changes to GPL v2+.
  license "GPL-2.0-or-later"
  head "https://github.com/FFmpeg/FFmpeg.git", branch: "master"

 livecheck do
    url "https://ffmpeg.org/download.html"
    regex(/href=.*?ffmpeg[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
  # Only add dependencies required for dependents in homebrew-core
  # or INCREDIBLY widely used and light codecs in the current year (2026).
  # Add other dependencies to ffmpeg-full formula.
  # We should expect to remove e.g. x264 eventually (>=2027) when usage of it is
  # negligible and has all moved to e.g. x265 instead.
  depends_on "libvmaf" # dependent: ab-av1
  depends_on "openssl@3"
  depends_on "xz"
  depends_on "dav1d"
  depends_on "rubberband" => :optional

  def install
    args = %W[
      --prefix=#{prefix}
      --enable-shared
      --enable-pthreads
      --enable-version3
      --cc=#{ENV.cc}
      --host-cflags=#{ENV.cflags}
      --host-ldflags=#{ENV.ldflags}
      --enable-gpl
      --enable-nonfree
      --enable-opencl
      --disable-libfontconfig
      --disable-libfreetype
      --disable-lzma
      --disable-gnutls
      --disable-libjack
      --disable-debug
      --disable-doc
      --disable-decoder=magicyuv
      --disable-xlib
      --disable-libxcb
      --disable-libxcb-shm
      --disable-libxcb-xfixes
      --disable-libxcb-shape
      --disable-indev=jack
      --disable-vulkan
      --enable-audiotoolbox
      --enable-videotoolbox
      --enable-libdav1d
      --disable-network
      --disable-txtpages
      --disable-podpages
    ]

    system "./configure", *args
    system "make", "install"

    # Build and install additional FFmpeg tools
    system "make", "alltools"
    bin.install Dir["tools/*"].select { |f| File.executable? f }
  end

  test do
    # Create an example mp4 file
    mp4out = testpath/"video.mp4"
    system bin/"ffmpeg", "-filter_complex", "testsrc=rate=1:duration=1", mp4out
    assert_predicate mp4out, :exist?
  end
end
