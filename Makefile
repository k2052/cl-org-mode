LISP ?= sbcl

.PHONY: all
all: test

.PHONY: test
test:
	$(LISP) --non-interactive \
		--eval '(ql:quickload :cl-org-mode-tests)' \
		--eval '(ql:quickload :cl-org-mode-extended-tests)' \
		--eval "(asdf:oos 'asdf:test-op :cl-org-mode)" \
		--eval "(asdf:oos 'asdf:test-op :cl-org-mode-extended)" \
		--eval '(uiop:quit)'

.PHONY: clean
clean:
	@echo "Cleaning up..."
