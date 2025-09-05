class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.48.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.48.0/eca-native-macos-aarch64.zip"
      sha256 "d6c36c2b6f43e457aae8195c04dc7758d0810e1fe6d5c6bb3477c23557c183de"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.48.0/eca-native-macos-amd64.zip"
      sha256 "6bd85d2edb8beecf90ecb8557704feeeeef969e92ffade2e74a36667c9cd8760"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.48.0/eca-native-linux-amd64.zip"
      sha256 "509204b893302df49cea0744d737e6f42e3f44ea086234877dedb350dbbe998b"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.48.0/eca-native-static-linux-amd64.zip"
      sha256 "5f765352c095fdf64f313d1928340fc78adf87d8be39dbaadbaabde5834fbdf7"
    end
  end

  def install
    bin.install "eca"
  end
end

