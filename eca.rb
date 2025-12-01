class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.85.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.85.1/eca-native-macos-aarch64.zip"
      sha256 "836f239d55fbf5bca7b7cf8699945fd52fa1789e32fdfea7001b73bd4ed0ea43"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.85.1/eca-native-macos-amd64.zip"
      sha256 "85927624fdc2f0eb7c062c75f5546017052249af93ad38dd6410abec9bedef39"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.85.1/eca-native-linux-amd64.zip"
      sha256 "d5265437eeb6985f4a84317986d217c48b769b13921e2754359cd7c2b543106c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.85.1/eca-native-static-linux-amd64.zip"
      sha256 "bd229198a03253c850b8172f3987003d5994950c8c0883ef8054fda252a3f9f6"
    end
  end

  def install
    bin.install "eca"
  end
end

