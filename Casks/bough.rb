cask "bough" do
  version "1.1.0"
  sha256 "2a8a2a370729deb2f6c2aaf7b6d7768a65267972a12dfbd6c48476e8a6abae26"

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
