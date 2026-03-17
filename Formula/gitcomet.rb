class Gitcomet < Formula
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
  version "0.1.1"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.1/gitcomet-v0.1.1-macos-arm64.tar.gz"
      sha256 "731479282c93b5095ff75befc969589ae8a4a2aa922344198918983c9b98229b"
    end

    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.1/gitcomet-v0.1.1-macos-x86_64.tar.gz"
      sha256 "a887d1adb27ad38ecb80df4050c67d8e4d7bf3160cdc3a73cf8c48464cb9cc82"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Auto-Explore/GitComet/releases/download/v0.1.1/gitcomet-v0.1.1-linux-x86_64.tar.gz"
      sha256 "f1c1991791a4798a67dbed89f584fe31f6efb703a91124cae1014701e5d3547b"
    end
  end

  def install
    bin.install Dir["**/gitcomet-app"].fetch(0)
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gitcomet-app --help")
  end
end
