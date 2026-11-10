cask "gitcomet" do
  version "0.3.4"
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  on_macos do
    on_arm do
      sha256 "02d70829152703df4fb696418e2e31b1b7f62d064762e232e0f05db3e7c9334a"
    end

    on_intel do
      sha256 "fce37391a931804f9384cd25e88f2147c2984535bf354c77062d90fe4e6954df"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
    depends_on macos: :sequoia

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"
  end

  on_linux do
    on_arm do
      sha256 "b65e2763f735e5a1cad3681b839542bf0b8e2d3363f20641b7c4137f9c6fe0c2"
    end

    on_intel do
      sha256 "305f4738867cc264fd3c36edbf904940210facd93aa8ad3407db07134dbb7fd2"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-linux-#{arch}.AppImage"
    container type: :naked

    binary "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "gitcomet"
  end

  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
end
