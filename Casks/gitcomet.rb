cask "gitcomet" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "0.1.15"

  on_macos do
    sha256 arm:   "c4c1b1fcb316194fd19288f7c41a9426c599d8b2c3b4b4be8491dc75df372e01",
           intel: "9a649d0ae089db8eab283c5607b486509472d2324545005d827a9365dcf60c50"

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
    depends_on macos: :ventura

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"
  end

  on_linux do
    sha256 arm:   "acc9d5549ea6056a3cd6f2c127441eb139e88531f665f8c85d6fbfcbaecac7e0",
           intel: "ca35009d44fb92907ee57dda92085d143ba532744a5685366b1abab8a4440f14"

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-linux-#{arch}.AppImage"
    container type: :naked

    binary "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "gitcomet"
  end

  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
end
