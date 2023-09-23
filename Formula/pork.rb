class Pork < Formula
  desc "Pork Programming Language"
  homepage "https://github.com/GayPizzaSpecifications/pork"

  head "https://github.com/GayPizzaSpecifications/pork.git", branch: "main"
  license "MIT"

  depends_on "gradle@8" => :build
  depends_on "unzip" => :build
  depends_on "openjdk@17"

  def install
    ENV["JAVA_HOME"] = HOMEBREW_PREFIX/"opt"/"openjdk@17"
    system "gradle --no-daemon tool:distZip"
    system "unzip tool/build/distributions/pork.zip -d installation"
    libexec.install Dir["installation/pork/*"]
    bin.install_symlink libexec/"bin/pork"
  end
end
