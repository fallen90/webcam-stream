GO        ?= go
NAME	  := webcam-stream
LDFLAGS	  := -w -s
BINDIR    := $(CURDIR)/bin

.PHONY: clean
clean:
	@rm -rf $(CURDIR)/bin

.PHONY: build
build:
	CGO_ENABLED=0 $(GO) build -a -ldflags="$(LDFLAGS)" -o $(BINDIR)/$(NAME) -v ./main.go