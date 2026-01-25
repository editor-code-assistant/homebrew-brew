class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.95.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.95.0/eca-native-macos-aarch64.zip"
      sha256 "c6f693e41423414b0bdaaafde89700460b99d68161defbf4dd7cc8e2d6bf5804"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.95.0/eca-native-macos-amd64.zip"
      sha256 "3b83166a94a0366ebeae70f56e9a53c2bdc365a4cb21bea824341b6fbff244a1"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.95.0/eca-native-linux-amd64.zip"
      sha256 "eff9825198ec51b8913ee17a398b30497938dcdae4e07046b322513101f15c76"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.95.0/eca-native-static-linux-amd64.zip"
      sha256 "be5badf227beb3497dae862fcca0e73980e7e142bd118e10c56a6dac18771227"
    end
  end

  def install
    bin.install "eca"
  end
end

