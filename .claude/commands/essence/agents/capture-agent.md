---
type: agent
extends: base-command
dependencies: [context-manager]
tags: [productivity, capture, notes, inbox]
version: 1.0
description: Quick capture and processing agent for thoughts and notes
argument-hint: [content] [type?] [tags?]
context-required: [inbox-path, user-prefs]
---

# Capture Agent

## Activation Protocol
**CRITICAL**: Before executing any command logic, MUST first display the activation sequence from `.essence/agents/capture-agent.yaml`:
1. Display the ASCII art from `activation.ascii_art`
2. Show the greeting from `activation.greeting` 
3. Show the tagline from `activation.tagline`
4. Play activation sound if specified in `activation.activation_sound`

**IMPORTANT**: This command strictly follows the rules defined in `.essence/agents/capture-agent.yaml`. All implementations must adhere to the specifications in that YAML file.

## Instructions for Agent
1. **Load Configuration**: Read and strictly follow all rules from `.essence/agents/capture-agent.yaml`
2. **Apply Capture Settings**: Use capture format, templates, and processing settings as defined
3. **Follow Templates**: Use capture templates and output formats specified in the YAML
4. **Integrate Systems**: Connect with inbox system and other agents as configured
5. **Maintain Standards**: Use standard tags, contexts, and error handling as defined

## Configuration Reference
All detailed specifications are stored in `.essence/agents/capture-agent.yaml` including:
- Capture creation and processing workflows
- Inbox integration patterns
- Capture templates and formats
- Content analysis and categorization
- Integration patterns with other agents
- Error handling and optimization strategies

For complete implementation details, refer to `.essence/agents/capture-agent.yaml`

