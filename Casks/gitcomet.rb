cask "gitcomet" do
  version "0.2.2"
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  on_macos do
    on_arm do
      sha256 "a9283796a0606e25b9f6407d9c9840ea1af4b4307433443b00d9dfc14c0fb46e"
    end

    on_intel do
      sha256 "d18bed3afcadcc49bd3708fd61d8f8041129417828d31177e89e5b72eaa52263"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
    depends_on macos: :ventura

    app "GitComet.app"
    binary "#{appdir}/GitComet.app/Contents/MacOS/gitcomet", target: "gitcomet"
  end

  on_linux do
    on_arm do
      sha256 "157de0d849ac3131b5b8485fa5b0a77cf727a42a5a5da71d8fbd2fae8ca6633e"
    end

    on_intel do
      sha256 "5b633b88fb451214a6676a5c96966d75982ec37cb14368486abdba76d575bbf3"
    end

    url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-linux-#{arch}.AppImage"
    container type: :naked

    binary "gitcomet-v#{version}-linux-#{arch}.AppImage", target: "gitcomet"
  end

  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"
end
