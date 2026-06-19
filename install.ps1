# Mohammed's AI Supercomputer — Full Restore Script
# Run in PowerShell as Admin on any new PC
# Prereqs: Node.js (nodejs.org), Ollama (ollama.com)

Write-Host "=== Mohammed's AI Setup Starting ===" -ForegroundColor Green

# 1. Install Claude Code globally
Write-Host "`n[1/3] Installing Claude Code..." -ForegroundColor Cyan
npm install -g @anthropic-ai/claude-code

# 2. Add all MCP servers
Write-Host "`n[2/3] Adding MCP servers..." -ForegroundColor Cyan
claude mcp add context7 -- npx -y @upstash/context7-mcp@latest
claude mcp add memory -- npx -y @modelcontextprotocol/server-memory
claude mcp add playwright -- npx -y @playwright/mcp@latest
claude mcp add sequential-thinking -- npx -y @modelcontextprotocol/server-sequential-thinking
claude mcp add filesystem -- npx -y @modelcontextprotocol/server-filesystem C:/Users/$env:USERNAME
claude mcp add desktop-commander -- npx -y @wonderwhy-er/desktop-commander
claude mcp add fetch -- npx -y @modelcontextprotocol/server-fetch
claude mcp add tavily -- npx -y tavily-mcp
claude mcp add github -- npx -y @modelcontextprotocol/server-github
claude mcp add ollama -- npx -y ollama-mcp
claude mcp add n8n -- npx -y @nicobailon/n8n-mcp-server

# 3. Pull Ollama models
Write-Host "`n[3/3] Pulling Ollama models..." -ForegroundColor Cyan
ollama pull llama3.2
ollama pull qwen2.5-coder

Write-Host "`n=== Setup Complete! ===" -ForegroundColor Green
Write-Host "Next: Copy claude-config/ to C:/Users/$env:USERNAME/.claude/"
Write-Host "Next: Fill in ENV_TEMPLATE.txt with your API keys"
Write-Host "Next: Run 'claude' to start Claude Code"
