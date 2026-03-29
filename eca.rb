class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.121.1"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.121.1/eca-native-macos-aarch64.zip"
      sha256 "b76c42e127d705eb21ad5e8bcf825648538ef7f581dbd8612881e9c20c7998cc"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.121.1/eca-native-macos-amd64.zip"
      sha256 "d1e37b6608b69514cd0830e3d695ec7c5259a180c6099422121b55799de7fcbb"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.121.1/eca-native-linux-amd64.zip"
      sha256 "efec44e91b46dc41c390538b7fa341ddfecaf8f9dfda94f85119b2b148b02216"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.121.1/eca-native-static-linux-amd64.zip"
      sha256 "a4c525b66096855f5624d1db3a06518d28725dc4bc3e87dd1f1422d122fe43c1"
    end
  end

  def install
    bin.install "eca"
  end
end

