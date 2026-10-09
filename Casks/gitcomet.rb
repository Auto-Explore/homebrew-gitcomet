cask "gitcomet" do
  version "0.3.0"
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  on_macos do
    on_arm do
      sha256 "53dcf84fdc388c4ada69abae58c76dddf8e0f18f032195085b4b6b917b9de583"
    end

    on_intel do
      sha256 "4daad18eb43dcde504baedefd1224d972555656c27a3adff9f181371394f5b51"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
    depends_on macos: :ventura

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"
  end

  on_linux do
    on_arm do
      sha256 "b75731d5678a91fae75d521fae7883c4d92848be4127370a10aeae548b4e3dd7"
    end

    on_intel do
      sha256 "0a1aa11f1f1611e53cdeb157f0e118fd5b155d9d337254fc9fb235d1ca9b83fa"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-linux-#{arch}.AppImage"
    container type: :naked

    binary "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "gitcomet"
  end

  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
end
