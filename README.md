# About this Repository

This repository is a collection of `git subtree`s for published LFE books.

Please do not issue pull requests against this repo, as it is essentially read-only.

Acutal book content is mainted in Markdown files in `builder` branches (see the repositories linked below). Content is generated in `master` branches. Pull requests need to be issued against the Markdown files in the `builder` branches below.

Any feedback, bugs, requests, etc., should be filed against the appropriate book in the links below.

Developers and contributers should scroll to the bottom of this file to read instructions on how to incorporate and publish changes to the LFE books.

---

# Published LFE Books

## `rebar3` Quick Start

* [Official repository](https://github.com/cnbbooks/lfe-rebar3-quick-start.git)
* [Submit request/feedback ticket](https://github.com/cnbbooks/lfe-rebar3-quick-start/issues/new)
* [Published content](https://lfe.io/books/rebar3-quick-start/)

# Casting SPELs in LFE

* [Official repository](https://github.com/cnbbooks/lfe-casting-spels.git)
* [Submit request/feedback ticket](https://github.com/cnbbooks/lfe-casting-spels/issues/new)
* [Published content](https://lfe.io/books/casting-spels/)

---

# Developer / Contributor Notes

1. To update a book, visit the repository for that book (linked above).
1. For the repository, and clone to your machine.
1. Create a branch for your change, commit, and push to your fork.
1. Issue a PR against the book publisher's repository for the book.

At this point, a reviewer will examine the change, provide feedback, and iterate with you on any needed changes.

Once approved, the changes will be merged to the `builder` branch and the reviewer will publish these changes to `master`.

Then the reviewer will update the `master` branch that collects all publised LFE books ([https://github.com/lfe/books](https://github.com/lfe/books)) and push that up to Github, at which point you changes will show up for the given book.

# Reviewer Notes

When adding a new book to the repo, be sure to run `make` first: this will remind you of the steps needed (i.e., updates to the `Makefile` and `README`).

Once those changes are made, to add the actual content for a new book, run `make init-YOUR-BOOK`.

To publish any changes made upstream (e.g., after the merging of a pull request), be sure to run `make update` in your working directoy of this project, and then `git push origin master`. After that, the latest version of all books will be published.
