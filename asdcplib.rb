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
    system "./configure", "--prefix=#{prefix}", "--enable-as-02", "--enable-phdr", "--enable-dev-headers", "--with-openssl=/usr/local/opt/openssl"
    system "make", "install"
  end
end
