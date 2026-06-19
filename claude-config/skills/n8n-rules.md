CRITICAL N8N RULES — NEVER BREAK THESE:
- ALL Anthropic/Claude API calls MUST use Code nodes with pure JavaScript fetch() — NEVER use HTTP Request nodes for Anthropic API
- Nodes are identified by NAME not ID in this workflow
- Connections use node names as keys
- Workflow file: ai_video_bot_v6_FIXED.json (127 nodes, 108 connections)
- n8n instance: theindianguyy.app.n8n.cloud
- Telegram security whitelist ID: 8370599696
- Monthly tool budget cap: $80
- ElevenLabs voice IDs are fixed: Max, Samantha, Taksh
- Free video stack priority: Veo first → Pexels second → Kling premium only when needed
- YouTube Upload node requires binary download node before it — never pass URL string directly
- After any workflow fix: validate JSON, count nodes, print all connection changes made
- Save fixed files as ai_video_bot_v6_FIXED.json

KNOWN BUGS ALREADY FIXED in v6_FIXED:
- YouTube Upload now has Download Video for YouTube node before it
- Build Approval Message merges input data with stored.pendingVideoData
- Load Pending Video no longer blocks on render-in-progress state
- DALL-E B and C have prompt fallbacks and continueOnFail true
- Carry Data After B and C spread full stored context
- Poll Render Status has Check Render Complete node with 5 retry logic
