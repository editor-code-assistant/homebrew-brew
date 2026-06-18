class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.142.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.142.0/eca-native-macos-aarch64.zip"
      sha256 "26ca8bb61d3b4dae54ba6ef3096739462f1fbb1890e5ba2165b51fc407ca3d3f"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.142.0/eca-native-macos-amd64.zip"
      sha256 "ef10bf917b4358995ae7b99a81d255d30612afe1f7e780d7af8f604ef74e6fe1"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.142.0/eca-native-linux-amd64.zip"
      sha256 "0a45edb3b412bec13cff71a27577e2f879aa2e8b2a26ec817ec1f2b96513c96a"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.142.0/eca-native-static-linux-amd64.zip"
      sha256 "d0377564a9d65963c30d1e565d9ce2d7926266d0c87aec3b89f1120da05a5a82"
    end
  end

  def install
    bin.install "eca"
  end
end

