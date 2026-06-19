# Mohammed's AI Supercomputer Setup

## New PC Restore (10 minutes)

1. Install Node.js from [nodejs.org](https://nodejs.org)
2. Install Ollama from [ollama.com](https://ollama.com)
3. Run `install.ps1` in PowerShell as Admin
4. Clone this repo: `git clone https://github.com/brutality99/ai-video-bot`
5. Copy `claude-config/` to `C:/Users/[yourname]/.claude/`
6. Fill in `.env` file from `ENV_TEMPLATE.txt` with your API keys
7. Open Claude Code — everything is restored

## Businesses

- **OzRide**: Ride service, Branson Missouri. Brand: hexagonal green badge, gold road accent, Georgia serif wordmark.
- **Empires Untold**: AI-automated YouTube channel, South Asian history for diaspora.
- **AI Video Bot**: Automated video pipeline on n8n — create, render, thumbnail, publish.

## Key Files

| File | Purpose |
|------|---------|
| `ai_video_bot_v6_FIXED.json` | Main n8n workflow (127 nodes, 108 connections) |
| `install.ps1` | MCP server + tool installer for new PC |
| `ENV_TEMPLATE.txt` | API keys template (fill in, never commit) |
| `claude-config/` | Claude Code skills, CLAUDE.md, settings |
| `claude-config/skills/` | All skill context files auto-loaded by Claude |

## n8n Workflow

- **Instance**: theindianguyy.app.n8n.cloud
- **Workflow ID**: DTILadQoZ7GrR78d
- **Telegram Bot**: Security whitelist ID `8370599696`
- **Trigger**: Send `TOPIC: [topic] QUALITY:HIGH` to Telegram bot

## Tech Stack

n8n · Claude API · ElevenLabs · DALL-E 3 · Google Veo · Kling · Creatomate · Pexels · YouTube API · Telegram Bot API · Supabase

## MCP Servers (all in install.ps1)

| Server | Purpose |
|--------|---------|
| context7 | Live library docs |
| memory | Persistent memory across sessions |
| playwright | Browser automation |
| sequential-thinking | Step-by-step reasoning |
| filesystem | File access |
| desktop-commander | Desktop control |
| fetch | URL fetching |
| tavily | Web search |
| github | GitHub integration |
| ollama | Local AI (llama3.2, qwen2.5-coder) |
| n8n | Read/write n8n workflows directly |
