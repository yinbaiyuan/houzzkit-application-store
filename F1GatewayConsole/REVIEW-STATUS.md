# Review-only / Draft HOS app definition

This is a **draft submission**, NOT a published HOS app. Do not merge or install as a default production app until:
- Maintainers confirm GHCR fully-qualified image_name field support.
- HOS entry point can launch and explain a self-signed HTTPS management page, and users can access private pairing credentials through an authorized first-install interface.
- Actual HOS app-store GUI first-run, clean import/export with resource/init.sh, upgrade and uninstall preserving private volume have passed on a disposable F1.
- Automatic collisions on host 17681/17891 are handled, HOS app dependency and image digest are reviewed.
- The app's limited upstream protocol support (only HTTP/SOCKS5 nodes with literal public IP) is clearly communicated; it is not the full transparent-gateway product.

Validated evidence (Nov 22, 2026):
- GitHub Actions ARM64 build and real Mihomo HTTP/SOCKS5 loopback test passed.
- Public GHCR image digest: sha256:c0f140b0b4ba6193379e03f57361c1eb718b69284b0876a474d59f066812d5c0; an anonymous F1 Docker daemon fetched that digest.
- F1 isolated nonprivileged container returned HTTPS page 200; canary deleted afterward; production services remained healthy.
- No HOS GUI native installation of this new app has yet been done; earlier different HOS candidate exported HDP without resource/* (upstream issue #5).
Source: https://github.com/jingweipro/houzzkit-f1-gateway-console
Upstream tracking: https://github.com/yinbaiyuan/houzzkit-application-store/issues/6
