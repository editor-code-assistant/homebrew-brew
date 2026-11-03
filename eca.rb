class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.169.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.169.1/eca-native-macos-aarch64.zip"
      sha256 "8936c2dbc062afe3c5af70e62fb81a3d8145a22c60907a6e5120c6e954b467a3"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.169.1/eca-native-macos-amd64.zip"
      sha256 "cdd06214d09c6c2eb12209916c93ad14f8a43a07c79b3eded6c6a4661ed2caa3"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.169.1/eca-native-linux-amd64.zip"
      sha256 "9cf25ff033f762f2af24d5508eef114a5f7a701fa7bc211750d5dbf920ecc801"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.169.1/eca-native-static-linux-amd64.zip"
      sha256 "c3da1f771e7ec5ebabc26bb4018b75006022b4afba0409f684b8638a06156c39"
    end
  end

  def install
    bin.install "eca"
  end
end

