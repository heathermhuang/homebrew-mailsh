class Mailsh < Formula
  desc "Email and calendar from the terminal, through MailGPT's hosted sign-in"
  homepage "https://github.com/heathermhuang/mailsh"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heathermhuang/mailsh/releases/download/v0.1.0/mailsh_0.1.0_darwin_arm64.tar.gz"
      sha256 "b9b9986e7bd68802d7635846345f91aa4b2bbf0981ba9cd926fad7461ef50563"
    else
      url "https://github.com/heathermhuang/mailsh/releases/download/v0.1.0/mailsh_0.1.0_darwin_amd64.tar.gz"
      sha256 "f53e1653e2aa43e12af7f5d301a2f30a68dec6dd79095eae56864d3b4c7f4810"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/heathermhuang/mailsh/releases/download/v0.1.0/mailsh_0.1.0_linux_arm64.tar.gz"
      sha256 "e1b9f5ae4322e65a7ac966aa18eaabb53343b90751f4e9b34147b23ef74a6a93"
    else
      url "https://github.com/heathermhuang/mailsh/releases/download/v0.1.0/mailsh_0.1.0_linux_amd64.tar.gz"
      sha256 "4a04fe1d6dee6ad5ecf1a3b3c911d23e2ddbf13d913441d481e21e9ca6584496"
    end
  end

  def install
    bin.install "mail.sh"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/mail.sh version")
  end
end
