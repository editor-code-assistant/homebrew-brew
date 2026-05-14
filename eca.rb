class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.134.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.0/eca-native-macos-aarch64.zip"
      sha256 "1da8975c15956193f55173b875c8d4903d342932881e24ac4735615e180d01f9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.0/eca-native-macos-amd64.zip"
      sha256 "99af9bdfa09b3e105d31cfe1add4ffdfb5de650029a0cbfdb588b3a0eb1b8186"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.0/eca-native-linux-amd64.zip"
      sha256 "12b3bf07041d769217c7477dc5f3263822088206e54760a3eebecbd047e4a3cd"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.134.0/eca-native-static-linux-amd64.zip"
      sha256 "caa2d7f58fa649cf25c3605a55e66b51efaa393549e83636dba32dd13762e2d3"
    end
  end

  def install
    bin.install "eca"
  end
end

