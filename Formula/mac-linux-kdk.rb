class MacLinuxKdk < Formula
  desc "Linux Kernel Development Kit for macOS"
  homepage "https://github.com/GayPizzaSpecifications/mac-linux-kdk"
  version "2021.11.07-22c8f765d3"

  url "https://github.com/GayPizzaSpecifications/mac-linux-kdk/archive/22c8f765d3f54c688071e0e86ab875ed9ac98806.zip"
  sha256 "708ebefe491c8c751c50be7cce323ab1fa5c53ca9aba9a735b69a00ce47d802d"
  license "LGPL-3.0-or-later" => { with: "LGPL-3.0-linking-exception" }

  depends_on "coreutils"
  depends_on "file-formula"
  depends_on "findutils"
  depends_on "gawk"
  depends_on "gnu-sed"
  depends_on "gnu-tar"
  depends_on "grep"
  depends_on "libtool"
  depends_on "llvm"
  depends_on "make"
  depends_on "ncurses"
  depends_on "openssl@1.1"

  def install
    bin.install Dir["bin/*"]
    libexec.install Dir["*"]
  end
end
