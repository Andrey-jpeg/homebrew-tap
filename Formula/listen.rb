# Formula/listen.rb
class Listen < Formula
  desc "A command-line tool built with Kotlin Multiplatform"
  homepage "https://github.com/andrey-jpeg/listen"
  version "1.0.0"

  # This block will run on Intel-based Macs
  on_intel do
    url "https://github.com/andrey-jpeg/listen/releases/download/v1.0.0/listen-1.0.0-macos-x86_64.tar.gz"
    sha256 "e00ea60abc9af84dce7c95aefadd5d4a3567bf42bb8320cc6969af45275efffc"
  end

  # This block will run on Apple Silicon-based Macs
  on_arm do
    url "https://github.com/andrey-jpeg/listen/releases/download/v1.0.0/listen-1.0.0-macos-arm64.tar.gz"
    sha256 "6f1c575ae7e17fd53dd38b8b061efe41f00dae92e1d6dd0a82a7b76f8b5de945"
  end

  def install
    # Both tarballs contain a single binary named "listen",
    # so we just install it directly into the user's bin.
    bin.install "listen"
  end

  test do
    # A simple test to make sure the binary is executable
    # and can respond to a common flag.
    system "#{bin}/listen", "--help"
  end
end