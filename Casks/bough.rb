cask "bough" do
  version "1.0.3"
  sha256 "36e0395856f19a7a504845cae5bf6aec580151ad570f5399fe9a3eed55bb3945"

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
