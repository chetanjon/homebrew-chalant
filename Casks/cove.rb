cask "cove" do
  version :latest
  sha256 :no_check

  url "https://github.com/chetanjon/cove/releases/latest/download/Cove.zip"
  name "Cove"
  desc "AI-native dynamic island for the Mac notch"
  homepage "https://chetanjon.github.io/cove/"

  # The app keeps itself current via Sparkle since 1.0.86.
  auto_updates true

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Cove.app"

  caveats <<~EOS
    Cove is unsigned by choice (free and independent).
    First open: System Settings, Privacy and Security, Open Anyway.
  EOS
end
