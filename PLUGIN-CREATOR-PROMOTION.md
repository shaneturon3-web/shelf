# Promote a seed with Plugin Creator

Use this procedure when a seed is ready for a controlled plugin test.

## Prepare

1. Select one seed and confirm its owner, single job, source records, and test.
2. Build one self-contained plugin directory.
3. Put the portable `plugin.json` at the package root.
4. Put the skill under `skills/<skill-name>/SKILL.md`.
5. Keep references, scripts, and assets beside that skill when needed.
6. Keep `.codex-plugin/plugin.json` as a synchronized Codex compatibility overlay.
7. Do not include credentials, caches, raw chat dumps, or unrelated files.

## Validate and archive

1. Validate the plugin with Plugin Creator's validator.
2. Make an archive containing exactly one plugin root.
3. Record the archive path and version in the seed ledger.

## Register or install

- For a private account plugin, pass the absolute archive path to `create_plugin`. Record
  `plugin_id`, `release_id`, `scope`, and `plugin_url`.
- For local development, add the source to the local marketplace and install it through the
  host's supported flow.
- Never treat local installation as account registration.
- Never publish or update an existing account plugin without resolving its exact backend ID and
  current release.

## Close the promotion

Run the bounded test. Then update `seedbank/SEED-REGISTRY.yaml` with `status`, version, test
result, and destination. Keep the original seed and source references.
