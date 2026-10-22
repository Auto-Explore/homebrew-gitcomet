cask "gitcomet" do
  version "0.3.2"
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  on_macos do
    on_arm do
      sha256 "77d7c2d8fcc0f9c4e64ba44e0144f4d233c0be77b1e110837ad12a44db1ed86b"
    end

    on_intel do
      sha256 "8eecf0f570be356224ff67cadae7efb08effc538b99c3bc495a7fe160d79742c"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
    depends_on macos: :ventura

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"
  end

  on_linux do
    on_arm do
      sha256 "e4f5502c4a5e8ee638b5c31c245961e5c23c01a57355f3d56343076d6fe8d858"
    end

    on_intel do
      sha256 "a93f895f302c9bdfb907f88e57e72b4050664219f0292408e0afdfe2f4034dd2"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-linux-#{arch}.AppImage"
    container type: :naked

    binary "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "gitcomet"
  end

  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
end
