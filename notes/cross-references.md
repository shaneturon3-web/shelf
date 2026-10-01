# Cross References

This file exists so GitHub knows that the private rclone layer exists, and the rclone layer can point back to the clean Shelf repo.

## GitHub

Repository: `shaneturon3-web/shelf`

Role:

- clean source of truth for public/sanitized material
- tools, skills, docs, manifests, restore playbooks
- consolidated decisions

Current branch for this draft work:

- `feature/distro-profiler-notes`

## rclone Remote

Remote name is not fixed yet.

Suggested remote layout:

```text
ShelfDrafts/
  notes/
    daily/
    sessions/
    global/
  manifests/
  home/
  vault-index/
```

Role:

- private draft layer
- incremental notes
- raw or semi-raw session exports when available
- selected HOME backups
- encrypted vault archives or vault pointers

## Rule

GitHub can point to rclone paths by name. rclone notes can point to GitHub branches and commits. Neither side should require the other to expose secrets.
