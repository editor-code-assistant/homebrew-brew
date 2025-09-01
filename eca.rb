class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.43.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.43.1/eca-native-macos-aarch64.zip"
      sha256 "d41e1f84a1d3cb02aae970acec960f54e48c6b8504da651104ce332e2da82392"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.43.1/eca-native-macos-amd64.zip"
      sha256 "9b24d8cad4664ade928592e8fdcf3d01f13c8c74d67f0c02ee0f80c54ff89e3f"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.43.1/eca-native-linux-amd64.zip"
      sha256 "707ccc965ee177d11937ff897b50d7aaa3ff2f78c0c2a3e92c6ba197b9500c04"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.43.1/eca-native-static-linux-amd64.zip"
      sha256 "5a1a8914213ac25f02cf475e47ade2111ffba69432c0b696a8333937428d46d4"
    end
  end

  def install
    bin.install "eca"
  end
end

