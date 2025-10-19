class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.70.5"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.5/eca-native-macos-aarch64.zip"
      sha256 "7c11df7af81cbb1ff673ce4d0155c354bfad866808a23c78821377dab22a2e3c"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.5/eca-native-macos-amd64.zip"
      sha256 "e297d3eb39c3f8cab3a1e8985fa4d01844bf857b0ff1567b370361cb10b506af"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.5/eca-native-linux-amd64.zip"
      sha256 "980d9bf738c15fa91db8bd4ed0e903715c706e405d146d65bb5c23236a1e3624"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.70.5/eca-native-static-linux-amd64.zip"
      sha256 "36d1e144a4ae7d71d611d68db26c6196a2749071e44a1dc867caba847e077215"
    end
  end

  def install
    bin.install "eca"
  end
end

