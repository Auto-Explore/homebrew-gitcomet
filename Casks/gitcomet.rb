cask "gitcomet" do
  version "0.2.6"
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  on_macos do
    on_arm do
      sha256 "6321da7ea5f04d9f366afc6be7937608b79a54f6467e5a1e85abd8458759e4c9"
    end

    on_intel do
      sha256 "b7d87c334c4aa149c93e2189c76fe577b42c5ae40597c0767fc8494b92620875"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
    depends_on macos: :ventura

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"
  end

  on_linux do
    on_arm do
      sha256 "141aeb1ea3e71c8a5df97bae69282e23d0963329daf8d2a260bbfa207322afa4"
    end

    on_intel do
      sha256 "5cf69c5d27e354b3d299a885e0c2bbd9f159246fa683b146e33129693af518c5"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-linux-#{arch}.AppImage"
    container type: :naked

    binary "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "gitcomet"
  end

  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
end
