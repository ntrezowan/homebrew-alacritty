# Homebrew Tap for Alacritty

This repository provides a **personal Homebrew tap** to install Alacritty on macOS (Apple Silicon only).  
It tracks the latest official Alacritty [GitHub releases](https://github.com/alacritty/alacritty) and updates automatically via GitHub Actions.

---

## Usage

1. **Add this tap (one time):**
    ```sh
    brew tap ntrezowan/alacritty https://github.com/ntrezowan/alacritty
    ```

2. **Install Alacritty:**
    ```sh
    brew install --cask alacritty-tap
    ```

3. **Upgrade:**
    ```sh
    brew update
    brew upgrade --cask alacritty-tap
    ```
4. To remove Alacritty
    ```sh
    brew uninstall --cask alacritty-tap
    ```
    
    To remove Alacritty and its configs (`~/.config/alacritty`) 
    ```sh
    brew uninstall --cask alacritty-tap
    ```

5. To untap
    ```sh
    brew untap ntrezowan/alacritty
    ```

---

### Notes

- **Apple Silicon only.** (For Intel Macs, use the official cask or build from source.)
- **First launch:** macOS will block the app (“unverified developer”). To allow launch:
    - Run in Terminal:
      ```sh
      sudo xattr -rd com.apple.quarantine /Applications/Alacritty.app
      ```
      *or*
    - Open Alacritty.app once, then go to System Settings → Security & Privacy → General and click “Open Anyway” for Alacritty.
- **Security:** This app is not codesigned/notarized. You must manually approve it in Gatekeeper.
- **Auto-update:** GitHub Actions keeps this cask up to date weekly.
- **No conflicts:** The unique cask name `alacritty-tap` ensures your installation won’t be overridden by the official Homebrew cask.

---
