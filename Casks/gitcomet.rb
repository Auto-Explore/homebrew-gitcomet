cask "gitcomet" do
  version "0.3.3"
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  on_macos do
    on_arm do
      sha256 "ffde019181122d599ff84cc4cd51f24d066e3123ccc3386ae2dcd4f8e259e5ba"
    end

    on_intel do
      sha256 "ef2f0affd87de80ad2348bb442d5066a857e19edaf0126471e6c81f60c5a0701"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
    depends_on macos: :ventura

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"
  end

  on_linux do
    on_arm do
      sha256 "a735af6409729e339c3c7b76b69c8ce6d84aa15c7fc1d1b847ab5601fd4cd8aa"
    end

    on_intel do
      sha256 "b3a4203b0947ff73214773035271006bb3b4f62788cb1a0e3ca7a72560bab692"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-linux-#{arch}.AppImage"
    container type: :naked

    binary "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "gitcomet"
  end

  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
end
