---
type: config
version: 1.0
description: System configuration and settings for Essence command system
---

# Essence System Settings

**IMPORTANT**: This command strictly follows the configuration rules defined in `.essence/config/settings.yaml`. All system behavior must adhere to the specifications in that YAML file.

## Purpose
Central configuration management for the Essence command system including user preferences, system defaults, agent behaviors, and workflow customizations.

## Instructions for Agent
1. **Load Configuration**: Read and apply all settings from `.essence/config/settings.yaml`
2. **Respect User Preferences**: Honor all user interface, automation, and privacy settings
3. **Apply Agent Settings**: Configure each agent according to their specific settings
4. **Follow Workflows**: Implement daily and weekly workflows as configured
5. **Manage Integrations**: Use only enabled integrations and scripts

## Configuration Categories
All detailed configuration is stored in `.essence/config/settings.yaml` including:
- **System Configuration**: Core settings, file paths, and default contexts
- **Agent Configuration**: Settings for task, health, capture, review, and finance agents
- **Workflow Configuration**: Daily and weekly workflow parameters
- **Expansion Packs**: Productivity, creative, and professional pack settings
- **User Preferences**: Interface, automation, and privacy preferences
- **Integrations**: External tool and script configurations
- **Performance Settings**: System optimization and memory management
- **Advanced Settings**: Experimental features and developer options

## Settings Management Commands
The following commands are available for managing configuration:
- `/settings show` → display current settings
- `/settings update [setting] [value]` → update specific setting
- `/settings reset [section]` → reset section to defaults
- `/settings export` → export settings for backup
- `/settings import [file]` → import settings from backup
- `/settings validate` → check settings for errors

For complete configuration details, refer to `.essence/config/settings.yaml`