# sbx-templates

Custom sandbox templates for use with [Docker Sandboxes](https://docs.docker.com/ai/sandboxes/) (`sbx`).

## Templates

### `claude-code-mise-puppeteer`

Claude Code with mise and Puppeteer/Chromium dependencies.

```bash
sbx run --template rknt/claude-code-mise-puppeteer:latest claude
```

### `shell-mise-agents`

Shell with mise, Node LTS, Go, pnpm, and claude/pi/opencode/dirac pre-installed.

```bash
sbx run --template rknt/shell-mise-agents:latest shell
```

## Building and pushing

A `Makefile` is provided with two targets:

```bash
make build    # build both images locally
make release  # build and push to Docker Hub
```

> **Note:** The `Makefile` uses the namespace `rknt`. If you are not `rknt`, update the `NAMESPACE` variable at the top of the `Makefile` to your own Docker Hub username before running `make release`.
