# Homebrew Tap for Alacritty

This repository provides a **personal Homebrew tap** to install a custom build of Alacritty on macOS (Apple Silicon only).
It tracks the latest official Alacritty [GitHub releases](https://github.com/alacritty/alacritty) and updates automatically via GitHub Actions.

---

## Usage

1. **Add this tap (one time):**
    ```sh
    brew tap ntrezowan/alacritty
    ```

2. **Install Alacritty:**
    ```sh
    brew install --cask alacritty-custom
    ```

3. **Upgrade:**
    ```sh
    brew update
    brew upgrade --cask alacritty-custom
    ```

4. **To remove Alacritty:**
    ```sh
    brew uninstall --cask alacritty-custom
    ```

    **To remove Alacritty and its configs (`~/.config/alacritty`):**
    ```sh
    brew uninstall --cask --zap alacritty-custom
    ```

5. **To untap (remove the tap):**
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
- **No conflicts:** The unique cask name `alacritty-custom` ensures your installation won’t be overridden by the official Homebrew cask.
    ```sh
    brew info alacritty-custom
    ```

---
