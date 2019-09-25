require "formula"

class Libadm < Formula
  homepage "https://github.com/IRT-Open-Source/libadm"
  url "https://github.com/IRT-Open-Source/libadm.git", :branch => "master"
  version "master"

  depends_on "cmake" => :build

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "-DCMAKE_BUILD_TYPE=RELEASE"
    system "make"
    system "make", "install"
  end
end
