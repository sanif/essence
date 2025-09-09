---
type: expansion
extends: base-command
dependencies: [capture-agent, context-manager]
tags: [creative, brainstorming, ideation, innovation]
version: 1.0
description: Creative brainstorming and ideation facilitation agent
argument-hint: [topic] [method?] [constraints?]
context-required: [creative-goals, inspiration-sources, idea-history]
---

# Brainstorm Agent

**IMPORTANT**: This command strictly follows the rules defined in `.essence/expansion-packs/creative/brainstorm-agent.yaml`. All implementations must adhere to the specifications in that YAML file.

## Instructions for Agent
1. **Load Configuration**: Read and strictly follow all rules from `.essence/expansion-packs/creative/brainstorm-agent.yaml`
2. **Apply Brainstorming Settings**: Use brainstorming methods, templates, and facilitation settings as defined
3. **Follow Templates**: Use brainstorming templates and output formats specified in the YAML
4. **Integrate Systems**: Connect with capture agent and other systems as configured
5. **Maintain Standards**: Use standard tags, contexts, and error handling as defined

## Configuration Reference
All detailed specifications are stored in `.essence/expansion-packs/creative/brainstorm-agent.yaml` including:
- Brainstorming facilitation workflows
- Creative method implementations
- Session templates and formats
- Idea capture and organization
- Integration patterns with other agents
- Error handling and optimization strategies

For complete implementation details, refer to `.essence/expansion-packs/creative/brainstorm-agent.yaml`

