---
type: agent
extends: base-command
dependencies: [context-manager]
tags: [finance, money, budgeting, goals]
version: 1.0
description: Personal finance tracking and optimization agent
argument-hint: [action] [amount?] [category?] [note?]
context-required: [finance-goals, budget, monthly-tracking]
---

# Finance Agent

## Activation Protocol
**CRITICAL**: Before executing any command logic, MUST first display the activation sequence from `.essence/agents/finance-agent.yaml`:
1. Display the ASCII art from `activation.ascii_art`
2. Show the greeting from `activation.greeting` 
3. Show the tagline from `activation.tagline`
4. Play activation sound if specified in `activation.activation_sound`

**IMPORTANT**: This command strictly follows the rules defined in `.essence/agents/finance-agent.yaml`. All implementations must adhere to the specifications in that YAML file.

## Instructions for Agent
1. **Load Configuration**: Read and strictly follow all rules from `.essence/agents/finance-agent.yaml`
2. **Apply Finance Settings**: Use finance tracking format, budget templates, and analysis settings as defined
3. **Follow Templates**: Use financial templates and output formats specified in the YAML
4. **Integrate Systems**: Connect with budgeting system and other agents as configured
5. **Maintain Standards**: Use standard tags, contexts, and error handling as defined

## Configuration Reference
All detailed specifications are stored in `.essence/agents/finance-agent.yaml` including:
- Financial tracking and analysis workflows
- Budget monitoring and alerts
- Financial templates and formats
- Goal tracking and optimization
- Integration patterns with other agents
- Error handling and optimization strategies

For complete implementation details, refer to `.essence/agents/finance-agent.yaml`

