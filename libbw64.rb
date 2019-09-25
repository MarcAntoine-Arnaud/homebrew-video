require "formula"

class Libbw64 < Formula
  homepage "https://github.com/irt-open-source/libbw64"
  url "https://github.com/irt-open-source/libbw64.git", :branch => "master"
  version "master"

  depends_on "cmake" => :build

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "-DCMAKE_BUILD_TYPE=RELEASE"
    system "make"
    system "make", "install"
  end
end
