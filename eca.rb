class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.94.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.94.0/eca-native-macos-aarch64.zip"
      sha256 "397490292863d1add9089600fb06659e954645867bd1fe54e9670cca324b6431"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.94.0/eca-native-macos-amd64.zip"
      sha256 "7476490cbafd076df5bafaf5def8f9bb210c9c18c8b1d0665b453867bad8b827"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.94.0/eca-native-linux-amd64.zip"
      sha256 "2e4459adf41a4bad101e1e1c69f07d27bfeb999518f7767f231a958930493b23"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.94.0/eca-native-static-linux-amd64.zip"
      sha256 "a854eeaeb16bb59006ec3b3481e517db6fd1f4159c751447b46f4faa4ad86a68"
    end
  end

  def install
    bin.install "eca"
  end
end

