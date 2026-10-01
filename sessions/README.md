# Session Notes

This directory is for sanitized session manifests and summaries only.

Raw sessions belong in the private rclone layer or an encrypted local vault.

## Suggested Manifest Shape

```yaml
session:
  source: codex
  title: Distro Profiler planning
  date: 2026-10-01
  privacy: sanitized
  private_backup: rclone:shelfcrypt:notes/sessions/codex/2026-10-01/
  related:
    github_repo: shaneturon3-web/shelf
    branch: feature/distro-profiler-notes
  decisions:
    - Keep GitHub as the clean control plane.
    - Keep raw/private sessions in rclone or vault storage.
```
