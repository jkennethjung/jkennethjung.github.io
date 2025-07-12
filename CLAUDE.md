This repository is my personal website at jkennethjung.github.io. 

# important-instruction-reminders
Do what has been asked; nothing more, nothing less.
NEVER create files unless they're absolutely necessary for achieving your goal.
ALWAYS prefer editing an existing file to creating a new one.
NEVER proactively create documentation files (*.md) or README files. Only create documentation files if explicitly requested by the User.

# private-docs-workflow
This repository maintains a strict separation between private and public documents:

- Private documents are now stored in a separate `jkennethjung` repository (private repo)
  - Contains all personal documents, drafts, and sensitive files
  - Scripts (like `run.sh`, `walk.sh`) operate within private repo subdirectories
  - Access via: `/Users/jkjun/jkennethjung/`

- `docs/` - Contains only files that should be publicly accessible via the website
  - Copy files from the private repo to `docs/` when they need to be web-accessible
  - Example: Copy `jkennethjung/cv/cv.pdf` to `docs/cv.pdf` for public access

CRITICAL: Website HTML/content must NEVER reference files in the private repository. Only reference files in `docs/` or other public directories.
