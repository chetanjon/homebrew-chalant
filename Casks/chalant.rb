cask "chalant" do
  version :latest
  sha256 :no_check

  url "https://github.com/chetanjon/chalant/releases/latest/download/Chalant.zip"
  name "Chalant"
  desc "AI-native dynamic island for the Mac notch"
  homepage "https://chetanjon.github.io/chalant/"

  # The app keeps itself current via Sparkle since 1.0.86.
  auto_updates true

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Chalant.app"

  caveats <<~EOS
    Chalant is unsigned by choice (free and independent).
    First open: System Settings, Privacy and Security, Open Anyway.
  EOS
end
