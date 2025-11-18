cask "alacritty-custom" do
  version "0.16.1"
  sha256 "28552c9398b732b23aee48206815d29f3707028c6ca9a82fd8b4c0d05caa940a"

  url "https://github.com/alacritty/alacritty/releases/download/v#{version}/Alacritty-v#{version}.dmg"
  name "Alacritty"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/alacritty/alacritty"

  # Apple Silicon only: uncomment the next line for strict arm restriction
  # depends_on macos: :arm64

  app "Alacritty.app"

  # Optionally, install completions and terminfo just like the official cask
  # You can remove this whole block if not wanted; included for feature parity.
  postflight do
    bash_completion = "#{appdir}/Alacritty.app/Contents/Resources/completions/alacritty.bash"
    fish_completion = "#{appdir}/Alacritty.app/Contents/Resources/completions/alacritty.fish"
    zsh_completion  = "#{appdir}/Alacritty.app/Contents/Resources/completions/_alacritty"
    manpage1        = "#{appdir}/Alacritty.app/Contents/Resources/alacritty.1.gz"
    manpage5        = "#{appdir}/Alacritty.app/Contents/Resources/alacritty.5.gz"
    manpage5b       = "#{appdir}/Alacritty.app/Contents/Resources/alacritty-bindings.5.gz"
    manpage1b       = "#{appdir}/Alacritty.app/Contents/Resources/alacritty-msg.1.gz"

    if File.exist?(bash_completion)
      system_command "install", args: [bash_completion, "#{HOMEBREW_PREFIX}/etc/bash_completion.d/"]
    end
    if File.exist?(fish_completion)
      system_command "install", args: [fish_completion, "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/"]
    end
    if File.exist?(zsh_completion)
      system_command "install", args: [zsh_completion, "#{HOMEBREW_PREFIX}/share/zsh/site-functions/"]
    end
    if File.exist?(manpage1)
      system_command "install", args: [manpage1, "#{HOMEBREW_PREFIX}/share/man/man1/"]
    end
    if File.exist?(manpage5)
      system_command "install", args: [manpage5, "#{HOMEBREW_PREFIX}/share/man/man5/"]
    end
    if File.exist?(manpage5b)
      system_command "install", args: [manpage5b, "#{HOMEBREW_PREFIX}/share/man/man5/"]
    end
    if File.exist?(manpage1b)
      system_command "install", args: [manpage1b, "#{HOMEBREW_PREFIX}/share/man/man1/"]
    end
  end

  zap trash: [
    "~/Library/Preferences/com.electron.alacritty.plist",
    "~/Library/Saved Application State/com.electron.alacritty.savedState",
    "~/.config/alacritty",
  ]
end
