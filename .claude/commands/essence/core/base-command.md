---
# Base Command Template
type: core
version: 1.0
description: Reusable template for all Essence commands
extends: null
---

# Base Command Template

**IMPORTANT**: This command strictly follows the rules defined in `.essence/core/base-command.yaml`. All implementations must adhere to the specifications in that YAML file.

## Purpose
This template provides the foundational structure and patterns for all Essence commands, ensuring consistency and reusability across the system.

## Instructions for Agent
1. **Read Configuration**: Load and strictly follow all rules from `.essence/core/base-command.yaml`
2. **Apply Structure**: Use the command structure defined in the YAML file
3. **Follow Patterns**: Implement all reusable patterns as specified
4. **Handle Errors**: Apply error handling as defined in the configuration
5. **Maintain Standards**: Use standard tags and conventions from the YAML

## Key Configuration Reference
- **Metadata Structure**: All required and optional frontmatter fields are defined in the YAML
- **Command Sections**: Six core sections with specific requirements and formats
- **Reusable Patterns**: File paths, common actions, and standard tags
- **Error Handling**: Best practices for robust command execution

## Implementation Notes
- Every command extending this base must include the metadata structure
- Follow the numbered action format for clarity
- Use the standard file path patterns for consistency
- Implement proper error handling for reliability

For complete specifications, refer to `.essence/core/base-command.yaml`