default: help

help:
	@echo
	@echo "To add a new book to this repo, look at the Makefile targets"
	@echo "for the other books, already present. Create targets like"
	@echo "those (along with a unique VAR for the book's repo and"
	@echo "directory)."
	@echo
	@echo "Once you've added your targets, run your 'init' target via"
	@echo "make. Future updates to your book can be pulled in here with"
	@echo "your added 'update' target (or you can update all books with"
	@echo "the general-purpose update target)."
	@echo
	@echo "Note: the source repo branch needs to be the one that publishes"
	@echo "the final HTML output of the generated document."
	@echo

# --- Casting SPELs targets -----------------------------------

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

# --- rebar3_lfe Quick Start targets --------------------------

R3_QSTART_REPO = https://github.com/cnbbooks/lfe-rebar3-quick-start.git
R3_QSTART_DIR = rebar3-quick-start

init-$(R3_QSTART_DIR):
	@git subtree add \
	   --prefix $(R3_QSTART_DIR) \
	   $(R3_QSTART_REPO) \
	   master \
	   --squash

update-$(R3_QSTART_DIR):
	@git subtree pull \
	   --m "Updated latest from $(R3_QSTART_DIR)." \
	   --prefix $(R3_QSTART_DIR) \
	   $(R3_QSTART_REPO) \
	   master \
	   --squash

# --- LFE Tutorial targets ------------------------------------

TUT_REPO = https://github.com/cnbbooks/lfe-tutorial.git
TUT_DIR = tutorial

init-$(TUT_DIR):
	@git subtree add \
	   --prefix $(TUT_DIR) \
	   $(TUT_REPO) \
	   master \
	   --squash

update-$(TUT_DIR):
	@git subtree pull \
	   --m "Updated latest from $(TUT_DIR)." \
	   --prefix $(TUT_DIR) \
	   $(TUT_REPO) \
	   master \
	   --squash

# --- SICP targets ------------------------------------

SICP_REPO = https://github.com/cnbbooks/lfe-sicp.git
SICP_DIR = tutorial

init-$(SICP_DIR):
	@git subtree add \
	   --prefix $(SICP_DIR) \
	   $(SICP_REPO) \
	   master \
	   --squash

update-$(SICP_DIR):
	@git subtree pull \
	   --m "Updated latest from $(SICP_DIR)." \
	   --prefix $(SICP_DIR) \
	   $(SICP_REPO) \
	   master \
	   --squash

# --- Genereal publishing targets -----------------------------

update: \
	update-$(CASTING_SPELS_DIR) \
	update-$(R3_QSTART_DIR) \
	update-$(TUT_DIR) \
	update-$(SICP_DIR)

publish: update
	@git push origin master
