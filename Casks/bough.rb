cask "bough" do
  version "1.2.0"
  sha256 "e8350f3b874d2ecbb40f7c81047eebfab919360bf0fc70ca5b959ad68a5337b7"

  url "https://github.com/DGPisces/bough/releases/download/v#{version}/Bough-v#{version}.dmg"
  name "Bough"
  desc "Notch utility for AI coding agents, usage, music, lyrics, and AirDrop"
  homepage "https://github.com/DGPisces/bough"

  depends_on macos: :sonoma

  app "Bough.app"

  zap trash: [
    "~/.bough",
    "~/Library/Preferences/com.dgpisces.bough.plist",
  ]

  caveats <<~EOS
    Homebrew manages updates for this install:
      brew update
      brew upgrade --cask bough

    Bough's in-app updater is for the GitHub Releases DMG install path.
  EOS
end
