cask "gitcomet" do
  version "0.3.1"
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  on_macos do
    on_arm do
      sha256 "5c2decb3b54ed37841713607b4bdd479acdf19f8b2f43a94892d5cfafa23175e"
    end

    on_intel do
      sha256 "0baf6beabd81393d3a7e3738460809e910b9a00b8c87a68501e3becd2d47f186"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
    depends_on macos: :ventura

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"
  end

  on_linux do
    on_arm do
      sha256 "3b01e5373e3c0efdcd3c8932acec81cdfd4f29a05b3abbef66bdf36b4a29c9e1"
    end

    on_intel do
      sha256 "b25f61ec69a78abe5d5c6613c69b67784a2a8ca649cf990b82e4dbdd4d5ef6ad"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-linux-#{arch}.AppImage"
    container type: :naked

    binary "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "gitcomet"
  end

  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
end
