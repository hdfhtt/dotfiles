---

name: git-review
description: Suggest short Git commit message(s)
-----------------------------------------------------------------------------

# Git Review

Review the current Git working tree and suggest the smallest set of atomic commits.

## Rules

* Never create commits.
* Never stage files.
* Never explain your reasoning.
* Never summarize the implementation.
* Never describe what changed in prose.
* Never include introductions, conclusions, or commentary.
* Output only the commit suggestion.
* Include unversionned files.

## Commit Messages

Use the Conventional Commits format: `type: description`

* Common types: `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`, `build`, `ci`, `chore`, `revert`.
* The full commit message, including the `type: ` prefix, **should be between 28 and 40 characters**.
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

## Commit Grouping

If there are multiple independent logical changes, group files into separate atomic commits.

Output exactly:

Commit 1: `type: description`

* path/to/file1
* path/to/file2

Commit 2: `type: description`

* path/to/file3
* path/to/file4

If only one logical commit is needed, output **only** the commit message.

Example:

refactor: Simplify middleware wiring

Do not output anything else.

# Individual Commit Examples

* feat: Add user profile field validation
* fix: Resolve stale invalidation bug
* refactor: Simplify auth middleware chain
* chore: Remove unused request helper code
* perf: Improve search result sort speed