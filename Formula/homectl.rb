# homectl 0.2.0 release archives. Their executable is named homectl; this formula installs it as home-ctl.
# Remove the rename when a release that ships home-ctl is the one in url.
class Homectl < Formula
  desc "Manage your homelab through KeePassXC and SSH"
  homepage "https://github.com/Hiosdra/homectl"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Hiosdra/homectl/releases/download/v0.2.0/homectl-0.2.0-macos-arm64.tar.gz"
      sha256 "553f86748c404f0891dfc43aa2d1a01d63baae7a27bd7fc4ea04532bff5fdf6c"
    end
    on_intel do
      url "https://github.com/Hiosdra/homectl/releases/download/v0.2.0/homectl-0.2.0-macos-x64.tar.gz"
      sha256 "1d3184b6c1b80e7eb8ff31d71a82a6a52b22191416db12ebfe6fe83ea3246d6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Hiosdra/homectl/releases/download/v0.2.0/homectl-0.2.0-linux-arm64.tar.gz"
      sha256 "0221c9bc26a9a1db170c6263f6a556a4f82f70dd684aa65d84bf110c57dadc65"
    end
    on_intel do
      url "https://github.com/Hiosdra/homectl/releases/download/v0.2.0/homectl-0.2.0-linux-x64.tar.gz"
      sha256 "eab0595a1ab849fc56d7f3bdcae6a482c4e947feeb87a18209ae81f9a2a283f9"
    end
  end

  def install
    bin.install "homectl" => "home-ctl"
  end

  def caveats
    <<~EOS
      homectl reads its vault through keepassxc-cli. Install KeePassXC, which provides it.
    EOS
  end

  test do
    assert_match "homectl", shell_output("#{bin}/home-ctl help")
  end
end
