require "formula"

class Asdcplib < Formula
  homepage "https://github.com/cinecert/asdcplib"
  url "https://github.com/cinecert/asdcplib.git", :branch => "master"
  version "master"

  devel do
    url "https://github.com/cinecert/asdcplib.git", :branch => "develop"
    version "develop"
  end

  depends_on "openssl"

  def install
    system "cmake", "-DOpenSSLLib_include_DIR=/usr/local/opt/openssl/include", "."
    system "make"
    system "make", "install"
  end
end
