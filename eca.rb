class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.49.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.49.0/eca-native-macos-aarch64.zip"
      sha256 "6729a7520b8d0fa4f79f16aa2e334078d4e367846d499634e9866241eedd8a2f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.49.0/eca-native-macos-amd64.zip"
      sha256 "9b7cab43c90b6340f35ee44d9a943344b540108c2150b286a5c7e80158b99145"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.49.0/eca-native-linux-amd64.zip"
      sha256 "9fd0c37b62827f23c26b9a94624d3494d149ec0d690e39ff768ba3fb399e97fc"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.49.0/eca-native-static-linux-amd64.zip"
      sha256 "868fe25cf2b7303bfa746673d9e2df2fcaff0757266b8bd8e2d0779f0f213c0f"
    end
  end

  def install
    bin.install "eca"
  end
end

