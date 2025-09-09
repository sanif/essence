# Essence - AI-Powered Personal Management System

## Project Overview
This is Essence, a comprehensive AI-powered personal management system that transforms any AI coding assistant into your personal life manager. Originally built for Obsidian but works with any text editor that supports markdown.

## Available Slash Commands

### Core Agents
- `/essence:agents:memory-agent [content]` - Your second brain for knowledge storage and retrieval
- `/essence:agents:task-agent [task] [due] [reminder?]` - Task management with Mac Reminders integration
- `/essence:agents:review-agent [type] [period?]` - Daily, weekly, monthly structured reviews
- `/essence:agents:capture-agent [content] [tags?]` - Quick thought and idea capture
- `/essence:agents:health-agent [metric] [value?] [note?]` - Comprehensive health and wellness tracking
- `/essence:agents:finance-agent [action] [amount?] [category?]` - Personal finance management

### Expansion Pack Agents  
- `/essence:expansion-packs:creative:brainstorm-agent [topic] [method?]` - Advanced creative ideation
- `/essence:expansion-packs:productivity:focus-agent [mode] [duration?]` - Deep work and focus sessions

### Workflow Commands
- `/essence:workflows:daily-workflow` - Complete daily planning and review
- `/essence:workflows:weekly-workflow` - Weekly review and planning process
- `/essence:workflows:gtd-workflow` - Getting Things Done methodology implementation

## Folder Structure
- `00-Dashboard/` - Main dashboard and overview
- `01-Daily/` - Daily notes and planning
- `02-Weekly/` - Weekly reviews and planning
- `03-Projects/` - Project management and tracking
- `04-People/` - Contacts and relationship management
- `05-Meetings/` - Meeting notes and follow-ups
- `06-Strategy/` - Strategic planning and goals
- `07-Technical/` - Technical documentation and notes
- `08-Knowledge/` - Knowledge base and learning
- `09-Personal/` - Personal life management
- `10-Quick-Notes/` - Inbox for quick capture
- `Templates/` - All system templates
- `Assets/` - Images, files, and media attachments
- `.claude/` - Claude Code command definitions
- `.essence/` - Agent configurations and settings
- `scripts/` - Helper scripts (Mac Reminders integration)

## Daily Workflows
1. **Morning (5 min):** `/essence:agents:review-agent daily` → review → set priorities
2. **During day:** Use `/essence:agents:task-agent`, `/essence:agents:capture-agent` as needed
3. **Evening (5 min):** `/essence:agents:review-agent daily` → `/essence:agents:health-agent` updates

## Weekly Workflow
- **Sunday:** `/essence:workflows:weekly-workflow` → process captures → update goals

## AI Assistant Compatibility
- **Currently supported:** Claude Code (full integration)
- **Coming soon:** Google Gemini, GitHub Copilot
- **Future:** Any AI coding assistant with command support

## Mac Reminders Integration
Use `./scripts/reminder.sh` for Mac Reminders integration:
- Creates reminders in specified lists
- Supports due dates and times
- Integrates with `/remind` and `/task` commands

## Templates Available
Templates are located in the `/Templates` folder and work with any text editor:
- Daily Note Template - Structured daily planning and tracking
- Health Log Template - Comprehensive wellness tracking
- Goal Template - Goal setting and progress monitoring
- Meeting Template - Meeting notes and action items
- Project Template - Project planning and management
- Quick Capture Template - Rapid idea and note capture
- People Template - Contact and relationship tracking
- Decision Template - Decision-making framework
- Weekly/Monthly Review Templates - Structured reflection

**For Obsidian users**: Templates integrate with the Templater plugin for dynamic functionality.
**For other editors**: Templates work as static markdown files providing consistent structure.

## Troubleshooting
- Ensure scripts are executable: `chmod +x scripts/reminder.sh`
- Mac Reminders requires System Preferences → Privacy → Automation permissions
- All commands are defined in `.claude/commands/essence/` with corresponding configurations in `.essence/`
- Templates are fully customizable - edit them to match your preferred workflow