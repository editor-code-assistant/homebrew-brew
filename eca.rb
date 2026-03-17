class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.115.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.0/eca-native-macos-aarch64.zip"
      sha256 "dc55270c100bfbcc328c16cd40ae89699ae1f3129624fced00fb1854a7b0f2de"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.0/eca-native-macos-amd64.zip"
      sha256 "c67a33bdb35c14e57dda553dba5a0fa9339832cf90a29cf90104660b40ee2ad7"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.0/eca-native-linux-amd64.zip"
      sha256 "8e475c4de871a0e186d8c18c008ef50a5bda51fb32c974b4ddf5b0e3b8836a4f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.115.0/eca-native-static-linux-amd64.zip"
      sha256 "e6ba51bd0f4b0578f80624214174c31815343127043d9ccf6ffde56b111891ba"
    end
  end

  def install
    bin.install "eca"
  end
end

