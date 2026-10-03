# Plugin packaging rule

Every installable plugin package must contain both manifests before account registration:

- `plugin.json` at the package root: portable Agent Plugins 1.0 manifest used by Plugin Creator.
- `.codex-plugin/plugin.json`: Codex compatibility overlay, synchronized with the root manifest.

The package must be validated, archived with exactly one plugin root, and only then passed to
`create_plugin` using the authenticated host session. The archive does not contain credentials.

Keep these states separate in records:

1. source package;
2. local marketplace discovery/installation;
3. private account registration (`plugin_id`, `release_id`, `scope`);
4. visibility and availability on each client surface.

Registration is not publication. Do not edit the OpenAI-provided package, do not infer account
association from a local cache, and do not treat absence from a catalog as proof of deletion.
