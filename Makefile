default: help

help:
	@echo
	@echo "To add a new book to this repo, look at the Makefile targets"
	@echo "for the other books, already present. Create targets like"
	@echo "those (along with a unique VAR for the book's repo) and pull"
	@echo "in the new content."
	@echo
	@echo "Note: the source repo branch needs to be the one that publishes"
	@echo "the final HTML output of the generated document."
	@echo


update: update-$(CASTING_SPELS_DIR)

CASTING_SPELS_REPO = https://github.com/cnbbooks/lfe-casting-spels.git
CASTING_SPELS_DIR = casting-spels

init-$(CASTING_SPELS_DIR):
	@git subtree add \
	   --prefix $(CASTING_SPELS_DIR) \
	   $(CASTING_SPELS_REPO) \
	   master \
	   --squash

update-$(CASTING_SPELS_DIR):
	@git subtree pull \
	   --m "Updated latest from $(CASTING_SPELS_DIR)." \
	   --prefix $(CASTING_SPELS_DIR) \
	   $(CASTING_SPELS_REPO) \
	   master \
	   --squash
