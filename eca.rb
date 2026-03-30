class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.122.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.122.0/eca-native-macos-aarch64.zip"
      sha256 "86613c2abb653e0a4f42ebd4c5482e70096400a0e0b67eca51cca2e0e610253d"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.122.0/eca-native-macos-amd64.zip"
      sha256 "7de67a7a7b230942d225198e1af87e0a08ec3d6ac4033afdad5b8aff14dae691"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.122.0/eca-native-linux-amd64.zip"
      sha256 "234425c0f3e36617c4ac5ab2f87b1da1dbc2e61e943fd44b73d9de7aed03ab02"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.122.0/eca-native-static-linux-amd64.zip"
      sha256 "3ccf4bcff230e47aa9862af2d2a76b0f9253d1036c97959776a3f0a5e8c163ac"
    end
  end

  def install
    bin.install "eca"
  end
end

