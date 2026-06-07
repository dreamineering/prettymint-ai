# prettymint-ai

Reusable agent and Claude Code skill configuration for Prettymint AI.

## Layout

- `skills/` contains reusable skills, one directory per skill.
- `scripts/` contains helper scripts (`link-skills.sh` to symlink skills into
  `~/.claude/skills`, `list-skills.sh` to list discovered skills).
- `.claude/` contains project-local Claude Code configuration.
- `.claude/skills` points to `../skills` for Claude Code compatibility.

