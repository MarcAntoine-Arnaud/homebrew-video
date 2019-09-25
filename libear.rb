require "formula"

class Libear < Formula
  homepage "https://github.com/valnoel/libear"
  url "https://github.com/valnoel/libear.git", :branch => "patch-1"
  version "master"

  depends_on "cmake" => :build

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "-DCMAKE_BUILD_TYPE=RELEASE"
    system "make"
    system "make", "install"
  end
end
