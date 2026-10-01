# Backup Protocol Draft

Status: living notes, not a formal policy yet.

## Intent

Keep daily work protected without making GitHub noisy or unsafe.

GitHub is the clean control plane. It stores code, skills, manifests, protocols, and sanitized notes.

Drive/Box/Dropbox through rclone is the private draft and recovery layer. It can store incremental notes, session exports, and selected HOME material, preferably through an encrypted remote.

A local encrypted vault is for secrets and credentials.

## Current Split

### GitHub Shelf

Use for:

- tools and scripts
- skills and agent instructions
- sanitized session summaries
- manifests that point to private backups
- restore playbooks
- decisions after they are consolidated

Do not use for:

- raw sessions
- API keys, cookies, tokens, SSH/GPG/VPN keys
- browser internal databases
- unreviewed personal/private material

### rclone Remote

Use for:

- draft notes produced during the day
- ChatGPT/Codex session exports when available
- selected HOME backups
- encrypted vault archives
- recovery bundles after power/network interruptions

Default behavior should be manual or agent-triggered, not scheduled automatic sync.

### Local Vault

Use for:

- secrets
- credentials
- keys
- token stores
- private identity material

GitHub may contain only a sanitized manifest saying the vault exists and how to restore it manually.

## Draft Flow

1. Append notes locally during the session/day.
2. Push incremental draft notes to rclone remote when useful.
3. Keep GitHub unchanged while ideas are unstable.
4. Consolidate later into clean GitHub notes, docs, skills, or code.
5. Keep raw exports and secrets outside GitHub.

## Failure Assumption

Assume power, local network, public network, or remote servers can fail. Draft notes should be cheap to refresh and safe to repeat.
