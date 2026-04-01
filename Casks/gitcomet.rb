cask "gitcomet" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.8"
  sha256 arm: "0bf7211d8fe52ccf2beba347a9ed44d790d67add696d549b1f5684f218f9b844", intel: "117040c5717e4d0a5b5c891cf6d704347a18184ee6a3aa8b89ccfb31f24934cb"

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
