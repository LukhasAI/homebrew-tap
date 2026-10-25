# LUKHΛS — Homebrew Tap

This repository contains the Homebrew formula for the **LUKHΛS CLI**, an independently developed command-line tool in the LUKHΛS ecosystem.

## What is available

- [`Formula/lukhas.rb`](Formula/lukhas.rb) — formula currently declares CLI version **0.9.3**, a proprietary licence, Python 3.11, and pinned distribution/dependency archive checksums.
- [Release `v0.9.3`](https://github.com/LukhasAI/homebrew-tap/releases/tag/v0.9.3) — the referenced release contains `lukhas-cli-0.9.3.tar.gz`.

**Verification boundary:** The formula and the release asset were confirmed present on GitHub on 25 October 2026. Their existence is **not** evidence that a Homebrew installation or the CLI's commands have passed tests in a clean macOS environment.

## Homebrew

The conventional tap and install commands for this repository are:

```bash
brew tap LukhasAI/tap
brew install lukhas
```

These commands are **documentation of the expected Homebrew workflow, not a claim that installation was independently tested**. Review [the formula](Formula/lukhas.rb) and [the release](https://github.com/LukhasAI/homebrew-tap/releases/tag/v0.9.3) before installing. Homebrew may download dependencies or execute formula installation logic.

After a successful installation, the formula suggests these CLI commands:

```bash
lukhas --help
lukhas quickstart
```

Their successful behavior has not been independently verified in this documentation pass.

## Licensing and provenance

The formula specifies a **proprietary** licence; a public GitHub repository does not itself grant open-source usage rights. Consult the CLI distribution's applicable terms before redistribution or modification.

LUKHΛS (Logical Unified Knowledge Hyper-Adaptable System) is an independent research and engineering programme. A package manager distribution does not imply GitHub or Homebrew endorsement.

[Project website](https://lukhas.ai) · [LUKHΛS AI GitHub](https://github.com/LukhasAI)

---

*Documentation verification: 25 October 2026. Formula source and release listing checked; install/runtime test not performed.*
