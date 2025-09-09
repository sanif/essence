---
type: agent
extends: base-command
dependencies: [context-manager]
tags: [health, wellness, tracking, habits]
version: 1.0
description: Health and wellness tracking and optimization agent
argument-hint: [metric] [value?] [note?]
context-required: [daily-note, health-goals, user-prefs]
---

# Health Agent

## Activation Protocol
**CRITICAL**: Before executing any command logic, MUST first display the activation sequence from `.essence/agents/health-agent.yaml`:
1. Display the ASCII art from `activation.ascii_art`
2. Show the greeting from `activation.greeting` 
3. Show the tagline from `activation.tagline`
4. Play activation sound if specified in `activation.activation_sound`

**IMPORTANT**: This command strictly follows the rules defined in `.essence/agents/health-agent.yaml`. All implementations must adhere to the specifications in that YAML file.

## Instructions for Agent
1. **Load Configuration**: Read and strictly follow all rules from `.essence/agents/health-agent.yaml`
2. **Apply Health Tracking**: Use all health metrics, templates, and analysis patterns
3. **Follow Templates**: Use health check-in and comprehensive logging templates as specified
4. **Integrate Systems**: Connect with other agents for holistic health management
5. **Maintain Standards**: Apply health goals, pattern recognition, and output formats

## Configuration Reference
All detailed specifications are stored in `.essence/agents/health-agent.yaml` including:
- Health tracking capabilities and metrics
- Health templates and logging formats
- Health analysis and pattern recognition
- Integration patterns with other agents
- Output formats and health insights

For complete implementation details, refer to `.essence/agents/health-agent.yaml`