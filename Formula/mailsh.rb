class Mailsh < Formula
  desc "Email and calendar from the terminal, through MailGPT's hosted sign-in"
  homepage "https://github.com/heathermhuang/mailsh"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heathermhuang/mailsh/releases/download/v0.1.1/mailsh_0.1.1_darwin_arm64.tar.gz"
      sha256 "160976685c2f1bdc20ce8350c3e6b3917e1256b5db6be43893dab04c7c68aafb"
    else
      url "https://github.com/heathermhuang/mailsh/releases/download/v0.1.1/mailsh_0.1.1_darwin_amd64.tar.gz"
      sha256 "cf18fa5c5fb2c107a20ad8d62ccf4308524638d965f63e1381df3f1a43ef1643"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/heathermhuang/mailsh/releases/download/v0.1.1/mailsh_0.1.1_linux_arm64.tar.gz"
      sha256 "b75d409bd49a240651685f2fa824ac77c42f574bc6bc4891c44c65bc6db425e7"
    else
      url "https://github.com/heathermhuang/mailsh/releases/download/v0.1.1/mailsh_0.1.1_linux_amd64.tar.gz"
      sha256 "62f7dfa3f0b209bba688fa7e1bbeaf1dc8ce789ade3d2195acff7ecea19936e4"
    end
  end

  def install
    bin.install "mail.sh"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/mail.sh version")
  end
end
