# Beblue &nbsp; [![bluebuild build badge](https://github.com/blue-build/template/actions/workflows/build.yml/badge.svg)](https://github.com/blue-build/template/actions/workflows/build.yml)

### Differences between images
`beblue-main` - Mostly vanilla Silverblue image with some goodies (or bads)

`beblue-cachyos` - Image variant with CachyOS kernel included

`beblue-thinkpad` - Image variant with some Thinkpad specific packages and configs

### To rebase an existing atomic Fedora installation to the latest build:

- Rebase to the signed image, like so:
  ```
  sudo bootc switch ghcr.io/vyacheslavkostromin/beblue-main:latest
  ```
  Or other variants:
  ```
  sudo bootc switch ghcr.io/vyacheslavkostromin/beblue-cachyos:latest
  ```
  ```
  sudo bootc switch ghcr.io/vyacheslavkostromin/beblue-thinkpad:latest
  ```
- Reboot to complete the installation
  ```
  systemctl reboot
  ```

The `latest` tag will automatically point to the latest build. That build will still always use the Fedora version specified in recipes, so you won't get accidentally updated to the next major version.

## Verification

These images are signed with [Sigstore](https://www.sigstore.dev/)'s [cosign](https://github.com/sigstore/cosign). You can verify the signature by downloading the `cosign.pub` file from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/blue-build/template
```