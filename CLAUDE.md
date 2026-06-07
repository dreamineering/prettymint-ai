# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repository is

A collection of reusable **Claude Code skills** — portable capability packages meant to be dropped into any project (or installed under `~/.claude/skills/`). This is not an application: there is no build, run, or test harness. The "source" is the skills themselves and any scripts they bundle.

The repository is in its early stages; expect it to start sparse and grow one skill per directory under `skills/`.

## Skill anatomy

Each skill is a directory whose name is the skill's invocation name (`/<dir-name>`). Inside, a `SKILL.md` is the entry point:

```
skills/<skill-name>/
  SKILL.md          # required — frontmatter + instructions
  scripts/          # optional — executables the skill shells out to
  references/       # optional — supporting docs/templates loaded on demand
```

`SKILL.md` frontmatter must contain:

- `name` — kebab-case, matching the directory name.
- `description` — the dispatch contract. This is the **only** text Claude sees when deciding whether to invoke the skill, so it must spell out concretely *what the skill does* and *when to trigger it*, including paraphrases and example user phrasings ("triggers for…", "use when…"). Treat the description as the most important part of the skill — a capable skill with a vague description never fires.

The body below the frontmatter is the procedure Claude follows once the skill is invoked. Existing skills (see the `bd-*` family in `~/.claude/skills/`) structure the body as explicit, ordered steps, each pairing a decision with its rationale, rather than prose.

## Conventions

- **Keep the body progressive.** Put the core procedure in `SKILL.md`; push long templates, schemas, and examples into `references/` so they load only when needed.
- **Skills should be self-contained and project-agnostic** — assume nothing about the host project's stack, since the point is reuse across many projects.
- **Trigger design over capability.** When editing a skill that "isn't firing," fix the `description` first.

## Distributing / testing a skill

Skills are exercised by installing them where Claude Code discovers them (`~/.claude/skills/<name>/`, e.g. via symlink from this repo) and invoking `/<name>` in a session. This repository also exposes `skills/` through `.claude/skills` for project-local Claude Code compatibility. There is no automated test runner in this repo; validation is interactive.
