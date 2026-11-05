class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.170.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.170.1/eca-native-macos-aarch64.zip"
      sha256 "68105b5c43eb1fd25435c32f71f350ccbe91a1fb50ff4f4c3a1d7c0b45859269"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.170.1/eca-native-macos-amd64.zip"
      sha256 "8c463d8d51027ec4b1310069319733bc73343d14b3be012162a83ee5e30dd0c0"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.170.1/eca-native-linux-amd64.zip"
      sha256 "f0deba4c9b9c68eab4ec4aa05fa96ba89b3395a51b4c442027cfa88231ec3d63"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.170.1/eca-native-static-linux-amd64.zip"
      sha256 "9ca7862badfe22ee1a1d83826b36b2b437b292eab5a3d9bd821812c9b6ec2fa9"
    end
  end

  def install
    bin.install "eca"
  end
end

