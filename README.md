# sbx-templates

Custom sandbox templates for use with [Docker Sandboxes](https://docs.docker.com/ai/sandboxes/) (`sbx`).

## Templates

- **claude-code-mise-puppeteer**
  - setup mise
  - puppeteer deps
- **shell-mise-agents**
  - setup mise
  - puppeteer deps
  - Go, pnpm, Node LTS
  - claude, pi, opencode and dirac agents

Both are based on `-docker` so that agent can build and run containers.

```bash
sbx run --template rknt/claude-code-mise-puppeteer:latest claude
sbx run --template rknt/shell-mise-agents:latest shell
```

## Building and pushing

```bash
make build    # build both images locally
make release  # build and push to Docker Hub
```

> **Note:** The `Makefile` uses my namespace (`rknt`). Update the `NAMESPACE` variable at the top of the `Makefile` to your own Docker Hub username before running `make release`.
