class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "141.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/141.0/eca-native-macos-aarch64.zip"
      sha256 "16cadfbe440d9a8cb4a586fda2e4f2ae644153b590845ef2a93a7e06d24750da"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/141.0/eca-native-macos-amd64.zip"
      sha256 "e31ff52379abdb36624988922530ec73070a7552d15fcb0cabc36260cc13fc6d"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/141.0/eca-native-linux-amd64.zip"
      sha256 "dbb7272f7dcc4c2e879450e37e3fc791087cec8e90d61c7a49aede5fa0bafa6c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/141.0/eca-native-static-linux-amd64.zip"
      sha256 "1644ad930250ffaa9066d118503e1461769c749fb7a068881499a82f7eb435f5"
    end
  end

  def install
    bin.install "eca"
  end
end

