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
* The length budget includes the `type: ` prefix, which varies (`refactor: ` is 10 characters, `feat: ` is 6). For longer prefixes, tighten the description so the full line still fits 40 characters.
* Use the imperative mood.
* Start the description with a short, plain, common verb: Add, Remove, Update, Fix, Improve, Rename, Move, Replace, Reduce, Reword, Revise, Save, Store, Set up, Create, Plan, Document, Clean up, Support, Align.
* Avoid stiff or jargon verbs; prefer a plain equivalent: Scaffold → Set up/Create, Redefine → Revise/Rework, Redesign → Rework/Rebuild, Refine → Improve/Reword, Persist → Save/Store, Adopt → Use.
* Avoid verbs that end in "y"; prefer a short equivalent: Simplify → Reduce/Trim, Clarify → Reword/Revise.
* Prefer shorter verbs; avoid long ones such as Consolidate and Streamline.
* Avoid the "Rename X to Y" form when "Rename Y" is clear; drop the old name to save length.
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

refactor: Reduce middleware wiring

Do not output anything else.

# Individual Commit Examples

* feat: Add user profile field validation
* fix: Resolve stale invalidation bug
* refactor: Trim auth middleware chain
* chore: Remove unused request helper code
* perf: Improve search result sort speed