class Eca < Formula
  desc "Editor Code Assistant (ECA) - AI pair programming capabilities agnostic of editor"
  homepage "https://github.com/editor-code-assistant/eca"
  version "0.99.0"

  option "with-dynamic", "Installs the not static binary."

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/editor-code-assistant/eca/releases/download/0.99.0/eca-native-macos-aarch64.zip"
      sha256 "616feca37209c780ea391ad262a285e4dea10d7d6ef4df0c01c386f5092b32c9"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.99.0/eca-native-macos-amd64.zip"
      sha256 "f36043c73047c158df51daa0b9ba3e5083db27cb0dc20a7b09a6ed576281ff6a"
    end
  elsif OS.linux?
    if build.with? "dynamic"
      url "https://github.com/editor-code-assistant/eca/releases/download/0.99.0/eca-native-linux-amd64.zip"
      sha256 "62794dacbc35f8e69009efc067d695b7a5bae455deb132b53d2cd170127b5442"
    else
      url "https://github.com/editor-code-assistant/eca/releases/download/0.99.0/eca-native-static-linux-amd64.zip"
      sha256 "ab22a1b26d107b5cbadda62b1e4c9917c8713b50db6b32fa9762781fbd174396"
    end
  end

  def install
    bin.install "eca"
  end
end

