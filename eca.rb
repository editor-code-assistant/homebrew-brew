class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.100.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.2/eca-native-macos-aarch64.zip"
      sha256 "b859b137c86c19d82cd315b88bf2b84f1fd0e063c5a9231941fcff348ef1246e"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.2/eca-native-macos-amd64.zip"
      sha256 "fbd428443c6d532684aa59a86ce47f2dc24ce56a6ec8505b13efcba8478cb173"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.2/eca-native-linux-amd64.zip"
      sha256 "cf5911e2ab489a79e455b14356ab3731ed7fa3edb66b5ffb2c177f8a9f77e86f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.100.2/eca-native-static-linux-amd64.zip"
      sha256 "dd0ab94752c98f290d706925f2713e0cd531df7e939feb94ae456c565e718026"
    end
  end

  def install
    bin.install "eca"
  end
end

