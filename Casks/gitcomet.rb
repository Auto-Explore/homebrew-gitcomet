cask "gitcomet" do
  version "0.1.13"
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  on_macos do
    on_arm do
      sha256 "ef13fc9d5142b61524290ea9f6ff06a3beb77c66c2003fb8d75fbe1448b144c9"
    end

    on_intel do
      sha256 "31133da7e5a1c3350b227d177b31c9ebb8c2f9ba8d84aa4c000fc2bd0814f2d6"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
    depends_on macos: ">= :ventura"

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"
  end

  on_linux do
    on_arm do
      sha256 "903c8ac5a6d581a03f7628dbbd917a7d0f0ab8d199ecd27c566ae86b735c1feb"
    end

    on_intel do
      sha256 "ddce167f6592d39fa44756fd29a7d9b478dbb6efb4562c71dbe891c82a020805"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-linux-#{arch}.AppImage"
    container type: :naked

    binary "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "gitcomet"
  end

  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
end
