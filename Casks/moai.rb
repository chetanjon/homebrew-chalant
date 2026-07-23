cask "moai" do
  version :latest
  sha256 :no_check

  url "https://github.com/chetanjon/moai/releases/latest/download/Moai.zip"
  name "Moai"
  desc "AI-native dynamic island for the Mac notch"
  homepage "https://chetanjon.github.io/moai/"

  # The app keeps itself current via Sparkle since 1.0.86.
  auto_updates true

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Moai.app"

  caveats <<~EOS
    Moai is unsigned by choice (free and independent).
    First open: System Settings, Privacy and Security, Open Anyway.
  EOS
end
