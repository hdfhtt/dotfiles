# Global Instructions

## After Task Completion

The following instructions apply **only after implementation is complete** and after any applicable build, type check, lint, or tests have finished.

Do **not** perform these steps during planning, analysis, or while work is still in progress.

### Verification

* Run the project's build, type check, lint, or tests when appropriate.
* If verification fails, report the errors and do not consider the task complete.

### Git Commit Message

If verification succeeds, suggest the smallest set of atomic commits for the current working tree.

Rules:

* Never create commits.
* Never stage files.
* Never explain your reasoning.
* Never summarize the implementation.
* Never describe what changed in prose.
* Never include introductions, conclusions, or commentary.
* Output only the commit suggestion.
* Include unversioned files.

### Commit Messages

Use the Conventional Commits format: `type[optional scope]: description`

* Common types: `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`, `revert`.
* The scope is optional, written in parentheses, e.g. `fix(cache):`.
* The description (the part after the `type[optional scope]: ` prefix) **should be between 28 and 40 characters**, not counting the prefix.
* Use the imperative mood.
* Always start the description with a common verb.
* Write the description in sentence case.
* Avoid abbreviations; spell words out in full.
* Acronyms are fully acceptable (e.g. API, URL, CLI, JSON).
* Measurement units are acceptable (e.g. ms, KB, px).
* Do not end with a period.
* Focus on the primary logical change.
* Avoid generic messages such as "Update code" or "Fix bugs".
* Prefer concise, descriptive wording.
* Avoid snakeCase or CamelCase terms.

### Commit Grouping

If there are multiple independent logical changes, group files into separate atomic commits. Group by logical concern, not by directory or file type, and do not split tightly related changes.

Output exactly:

Commit 1: `type[optional scope]: description`

* path/to/file1
* path/to/file2

Commit 2: `type[optional scope]: description`

* path/to/file3
* path/to/file4

If only one logical commit is needed, output **only** the commit message.

Example:

refactor(auth): Simplify middleware wiring layer

Do not output anything else.

### Individual Commit Examples

* feat: Add user profile field validation
* fix(cache): Resolve stale invalidation bug
* refactor: Simplify auth middleware chain
* chore: Remove unused request helper code
* perf: Improve search result sort speed
