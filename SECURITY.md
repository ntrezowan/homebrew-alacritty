# Security Policy

## Reporting a Vulnerability

This repository provides a **prebuilt Homebrew cask** for Alacritty. It is **not officially signed or notarized by Apple**. Users should verify the binary themselves before installation.  

If you discover a security issue in this tap, please contact me **privately** via email: `ntrezowan@gmail.com`. Public GitHub issues should **not** be used for security reports.

---

## Scope

- Security issues in this repository are limited to:
  - Incorrect SHA256 hashes in casks
  - Malicious or tampered binaries in the tap
  - Automation scripts (GitHub Actions) used for updates  

This tap **does not cover vulnerabilities in Alacritty itself**. Please report those to the official Alacritty repository: [https://github.com/alacritty/alacritty](https://github.com/alacritty/alacritty).

---

## Response

- All valid reports will be acknowledged within **7 days**.  
- If a security fix is needed, it will be released via an updated cask or SHA256 correction.  
- Users are advised to always verify downloaded binaries before installation.

---

## Recommendations for Users

1. Always check the SHA256 of the downloaded `.dmg`:
   ```sh
   shasum -a 256 Alacritty-v0.16.1.dmg
    ```

    and compare with the hash in the cask.

2. Approve the app in macOS Gatekeeper manually after download:
   ```sh
   sudo xattr -rd com.apple.quarantine /Applications/Alacritty.app
   ```
3. Consider running Alacritty from source if you require full trust of binaries.
