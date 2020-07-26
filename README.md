# LFE Books

## About this Repository

This repository is a collection of `git subtree`s for published LFE books.

Please to not issue pull requests against this repo, as it is read-only.

Acutal book content is mainted in Markdown files in `builder` branches (see the repositories linked below). Content is generated in `master` branches. Pull requests need to be issued against the Markdown files in the `builder` branches below.

Any feedback, bugs, requests, etc., shoulc be filed against the appropriate book in the links below.

---

## Published LFE Books

### `rebar3` Quick Start

* [Official repository](https://github.com/cnbbooks/lfe-rebar3-quick-start.git)
* [Submit request/feedback ticket](https://github.com/cnbbooks/lfe-rebar3-quick-start/issues/new)
* [Published content](https://lfe.io/books/rebar3-quick-start/)

### Casting SPELs in LFE

* [Official repository](https://github.com/cnbbooks/lfe-casting-spels.git)
* [Submit request/feedback ticket](https://github.com/cnbbooks/lfe-casting-spels/issues/new)
* [Published content](https://lfe.io/books/casting-spels/)

---

## Developer / Contributor Notes

1. To update a book, visit the repository for that book (linked above).
1. For the repository, and clone to your machine.
1. Create a branch for your change, commit, and push to your fork.
1. Issue a PR against the book publisher's repository for the book.

At this point, a reviewer will examine the change, provide feedback, and iterate with you on any needed changes.

Once approved, the changes will be merged to the `builder` branch and the reviewer will publish these changes to `master`.

Then the reviewer will update the `master` branch that collects all publised LFE books ([https://github.com/lfe/books](https://github.com/lfe/books)) and push that up to Github, at which point you changes will show up for the given book.
