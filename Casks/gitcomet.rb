cask "gitcomet" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.6"
  sha256 arm: "6a2d44a7e2c8cd4914701c2d67e62c09e7fc97f2174971d39d3e6ea0619970a0", intel: "f22a69cc230ede769a44652c57a7b3ae9d3956e5eec6b5d60a712508ae0c731f"

  url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"

  depends_on macos: ">= :ventura"

  app "GitComet.app"

  caveats do
    <<~EOS
      Optional CLI:
        brew install gitcomet-cli
    EOS
  end
end
