class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.110.2"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.110.2/eca-native-macos-aarch64.zip"
      sha256 "4c333b67183af34651356186690457c967c86f0eac0ba14528116dd89e7e7b93"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.110.2/eca-native-macos-amd64.zip"
      sha256 "bb8f8fb93b61230a7a3ab5d73a1c7ed811bd9d845757f47f40cea78391e11371"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.110.2/eca-native-linux-amd64.zip"
      sha256 "9c14af787af952f6ee97b806185722dce8cdfa84de087bc668463462d30156ef"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.110.2/eca-native-static-linux-amd64.zip"
      sha256 "a615112233a573985315a6d57b7a6dd6eb1dbc0d4716ec5557b6d2c4a622e160"
    end
  end

  def install
    bin.install "eca"
  end
end

