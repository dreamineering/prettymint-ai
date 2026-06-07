# AGENTS.md

This repository contains reusable agent skills and local agent configuration.

## Repo Shape

- Author skills under `skills/<skill-name>/`.
- Each skill must include `SKILL.md` with `name` and `description` frontmatter.
- `.claude/skills` points to `../skills` for Claude Code compatibility.
- `.codex/config.toml` contains project-local Codex defaults.

## Working Rules

- Keep skills self-contained and project-agnostic.
- Prefer concise, concrete skill descriptions; the description is the dispatch contract.
- Put long examples, schemas, and templates in `references/` rather than loading them into `SKILL.md`.
- There is no build or test harness yet; validate skills interactively after installation.

