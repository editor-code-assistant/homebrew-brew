class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.91.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.91.1/eca-native-macos-aarch64.zip"
      sha256 "599f937ee4e5848e97022a392663ac7ae4c8daf756f421be9fe265cba02f2959"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.91.1/eca-native-macos-amd64.zip"
      sha256 "975ac2cf57f775f0b0d9cb8a5e439b6b37dd196642b93b59e6f655642b091007"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.91.1/eca-native-linux-amd64.zip"
      sha256 "841081cda4e2098a680c9036b314de8ea46e063be058fab2eea7752b8dfc1920"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.91.1/eca-native-static-linux-amd64.zip"
      sha256 "7829e649f0160f241249ef1983ed1543b1e33f4564dbf218e709338215a6f52d"
    end
  end

  def install
    bin.install "eca"
  end
end

