require "formula"

class Asdcplib < Formula
  homepage "https://github.com/cinecert/asdcplib"
  url "https://github.com/cinecert/asdcplib.git", :branch => "master"
  version "master"

  #devel do
  #  url "https://github.com/cinecert/asdcplib.git", :branch => "develop"
  #  version "develop"
  #end

  depends_on "cmake" => :build
  depends_on "openssl"
  depends_on "xerces-c"

  def install
    system "cmake", "-DOpenSSLLib_include_DIR=/usr/local/opt/openssl/include", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "-DCMAKE_BUILD_TYPE=RELEASE"
    system "make"
    system "make", "install"
  end
end
