# rclone Draft Sync

Purpose: protect notes and recoverable drafts without polluting GitHub.

## Principles

- No always-on automatic sync for now.
- Prefer explicit refresh operations.
- Draft push can happen in the background when the agent is working.
- Consolidation into GitHub happens later, after review.
- Use an encrypted rclone remote for private sessions or HOME material.

## Suggested Commands

Inspect remotes:

```bash
rclone listremotes
```

Create a remote interactively:

```bash
rclone config
```

Create an encrypted remote after a base remote exists:

```bash
rclone config create shelfcrypt crypt remote BASE_REMOTE:ShelfDrafts
```

Push draft notes incrementally without deleting remote material:

```bash
rclone copy ~/ShelfDrafts shelfcrypt:notes --progress
```

Compare local and remote:

```bash
rclone check ~/ShelfDrafts shelfcrypt:notes
```

Use `sync` only after the local/remote direction is clear:

```bash
rclone sync ~/ShelfDrafts shelfcrypt:notes --progress
```

## Session Exports

When ChatGPT or Codex session exports are available, place them under a local draft folder first:

```text
~/ShelfDrafts/sessions/chatgpt/
~/ShelfDrafts/sessions/codex/
```

Then push with `rclone copy`, not `sync`, while the protocol is still evolving.
