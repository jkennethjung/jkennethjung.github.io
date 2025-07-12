This repository is my personal website at jkennethjung.github.io. 

# important-instruction-reminders
Do what has been asked; nothing more, nothing less.
NEVER create files unless they're absolutely necessary for achieving your goal.
ALWAYS prefer editing an existing file to creating a new one.
NEVER proactively create documentation files (*.md) or README files. Only create documentation files if explicitly requested by the User.

# private-docs-workflow
This repository uses a strict separation between private and public documents:

- `_private/` - Contains all personal documents, completely invisible to the website and internet
  - Jekyll automatically excludes directories starting with `_`
  - Additional exclusion added in `_config.yml` for extra safety
  - Store all personal docs, drafts, and sensitive files here
  - Scripts (like `run.sh`, `walk.sh`) operate within `_private/` subdirectories

- `docs/` - Contains only files that should be publicly accessible via the website
  - Only copy files from `_private/` to `docs/` when they need to be web-accessible
  - Example: `_private/cv/cv.pdf` copied to `docs/cv.pdf` for public access

CRITICAL: Website HTML/content must NEVER reference files in `_private/`. Only reference files in `docs/` or other public directories.
