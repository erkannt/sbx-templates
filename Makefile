NAMESPACE := rknt

.PHONY: build
build:
	docker build -f Dockerfile.claude-code-mise-puppeteer -t $(NAMESPACE)/claude-code-mise-puppeteer:latest .
	docker build -f Dockerfile.shell-mise-agents -t $(NAMESPACE)/shell-mise-agents:latest .

.PHONY: release
release: build
	docker push $(NAMESPACE)/claude-code-mise-puppeteer:latest
	docker push $(NAMESPACE)/shell-mise-agents:latest
