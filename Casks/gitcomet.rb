cask "gitcomet" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.10"
  sha256 arm: "6eafad4321176130cfd8e083ad0c3f35302212d1d52d19d5bd6ba750e28c9115", intel: "11aecb4febc9014962676ac37a16c36896aa8aaf3d25e8dcb7142c662e3c1fb3"

  url "https://github.com/Auto-Explore/GitComet/releases/download/v#{version}/gitcomet-v#{version}-macos-#{arch}.dmg"
  name "GitComet"
  desc "Fast, resource-efficient Git GUI written in Rust"
  homepage "https://github.com/Auto-Explore/GitComet"

  depends_on macos: ">= :ventura"

  app "GitComet.app"

  caveats do
    <<~EOS
      Optional CLI:
        brew install gitcomet-cli
    EOS
  end
end
