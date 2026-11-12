# homectl 0.2.1 release archives. Their executable is home-ctl.
class Homectl < Formula
  desc "Manage your homelab through KeePassXC and SSH"
  homepage "https://github.com/Hiosdra/homectl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Hiosdra/homectl/releases/download/v0.2.1/homectl-0.2.1-macos-arm64.tar.gz"
      sha256 "2f3f75865983c485e5b564adbaadacf8946a26fb03d9ab6c5df7fdfb7895fc67"
    end
    on_intel do
      url "https://github.com/Hiosdra/homectl/releases/download/v0.2.1/homectl-0.2.1-macos-x64.tar.gz"
      sha256 "b3df45d12536dfe9a72be107125d16124d1084cd254c6f0116c059e7ec99f69a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Hiosdra/homectl/releases/download/v0.2.1/homectl-0.2.1-linux-arm64.tar.gz"
      sha256 "09c3cfa23f78119dd05b91af48fe4b8509c1309f0ae960b75efb7e26a1c6bcc7"
    end
    on_intel do
      url "https://github.com/Hiosdra/homectl/releases/download/v0.2.1/homectl-0.2.1-linux-x64.tar.gz"
      sha256 "3351b89fc59182b63bb10fa26592974cf5db3ca0677302d3c0c1b7388b26a3ec"
    end
  end

  def install
    bin.install "home-ctl"
  end

  def caveats
    <<~EOS
      homectl reads its vault through keepassxc-cli. Install KeePassXC, which provides it.
    EOS
  end

  test do
    assert_match "home-ctl", shell_output("#{bin}/home-ctl help")
  end
end
