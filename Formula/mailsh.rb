class Mailsh < Formula
  desc "Email and calendar from the terminal, through MailGPT's hosted sign-in"
  homepage "https://github.com/heathermhuang/mailsh"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heathermhuang/mailsh/releases/download/v0.1.2/mailsh_0.1.2_darwin_arm64.tar.gz"
      sha256 "11fba776757d123e6360cc1ed34c9b7366123c156eca2bd86854d99caecffb77"
    else
      url "https://github.com/heathermhuang/mailsh/releases/download/v0.1.2/mailsh_0.1.2_darwin_amd64.tar.gz"
      sha256 "7268d61c3d20daaf4fe2fe5deb4c941f1a2b41441bda3a23ce80abf913132394"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/heathermhuang/mailsh/releases/download/v0.1.2/mailsh_0.1.2_linux_arm64.tar.gz"
      sha256 "eaaf57ead33075f61ea59d4c97dbe55aaddc488664ecb584a9b71989e3d58e20"
    else
      url "https://github.com/heathermhuang/mailsh/releases/download/v0.1.2/mailsh_0.1.2_linux_amd64.tar.gz"
      sha256 "715656eec9823f24de5292786affb7b6c532ff872ca3e0afab8ccc31958bde37"
    end
  end

  def install
    bin.install "mail.sh"
  end

  test do
    assert_match "0.1.2", shell_output("#{bin}/mail.sh version")
  end
end
