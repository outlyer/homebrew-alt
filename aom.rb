class Aom < Formula
  desc "Codec library for encoding and decoding AV1 video streams"
  homepage "https://aomedia.googlesource.com/aom"
  url "https://aomedia.googlesource.com/aom.git",
      :tag      => "v1.0.0-errata1",
      :revision => "add4b15580e410c00c927ee366fa65545045a5d9"
  head "https://aomedia.googlesource.com/aom.git"

  depends_on "cmake" => :build
  depends_on "yasm" => :build

  resource "bus_qcif_15fps.y4m" do
    url "https://media.xiph.org/video/derf/y4m/bus_qcif_15fps.y4m"
    sha256 "868fc3446d37d0c6959a48b68906486bd64788b2e795f0e29613cbb1fa73480e"
  end

  def install
    ENV.O3
    mkdir "macbuild" do
      system "cmake", "..", *std_cmake_args,
                      "-DENABLE_DOCS=off",
                      "-DENABLE_EXAMPLES=on",
                      "-DENABLE_TESTDATA=off",
                      "-DENABLE_TESTS=off",
                      "-DENABLE_TOOLS=off"

      system "make", "install"
    end
  end

  test do
    resource("bus_qcif_15fps.y4m").stage do
      system "#{bin}/aomenc", "--webm",
                              "--tile-columns=2",
                              "--tile-rows=2",
                              "--cpu-used=8",
                              "--output=bus_qcif_15fps.webm",
                              "bus_qcif_15fps.y4m"

      system "#{bin}/aomdec", "--output=bus_qcif_15fps_decode.y4m",
                              "bus_qcif_15fps.webm"
    end
  end
end
