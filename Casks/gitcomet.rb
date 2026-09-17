cask "gitcomet" do
  version "0.2.5"
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  on_macos do
    on_arm do
      sha256 "8e6b46b641c5206c233534c723ddc6e127673b64a86654ac0f635d072e8a3255"
    end

    on_intel do
      sha256 "7205148bf1a8ca3f93a4ee4c348714b727522a73ccf747fce4847642c310e98b"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
    depends_on macos: :ventura

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"
  end

  on_linux do
    on_arm do
      sha256 "44c51b9fced071bd1eb47e0fb33b6209a7892323568064c1e0d4a1a24ce7f3c5"
    end

    on_intel do
      sha256 "aab7e9b6f0c926c4172c9a4df9f8a22845906cfe03f56e210353b7926b223b39"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-linux-#{arch}.AppImage"
    container type: :naked

    binary "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "gitcomet"
  end

  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
end
