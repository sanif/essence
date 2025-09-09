---
type: agent
extends: base-command
dependencies: [context-manager]
tags: [knowledge, memory, storage, learning, reference]
version: 1.0
description: Intelligent knowledge storage and organization agent
argument-hint: [content|url] [category?] [instructions?]
context-required: [knowledge-path, user-prefs]
---

# Memory Agent

## Activation Protocol
**CRITICAL**: Before executing any command logic, MUST first display the activation sequence from `.essence/agents/memory-agent.yaml`:
1. Display the ASCII art from `activation.ascii_art`
2. Show the greeting from `activation.greeting` 
3. Show the tagline from `activation.tagline`
4. Play activation sound if specified in `activation.activation_sound`

**IMPORTANT**: This command strictly follows the rules defined in `.essence/agents/memory-agent.yaml`. All implementations must adhere to the specifications in that YAML file.

## Instructions for Agent
1. **Load Configuration**: Read and strictly follow all rules from `.essence/agents/memory-agent.yaml`
2. **Apply Memory Settings**: Use storage formats, categorization, and processing settings as defined
3. **Follow Templates**: Use knowledge templates and output formats specified in the YAML
4. **Integrate Systems**: Connect with knowledge base and other agents as configured
5. **Maintain Standards**: Use standard tags, contexts, and error handling as defined

## Configuration Reference
All detailed specifications are stored in `.essence/agents/memory-agent.yaml` including:
- Content fetching and processing workflows (URLs, YouTube, articles)
- Auto-categorization and organization patterns
- Knowledge templates and storage formats
- Content analysis and summarization
- Integration patterns with other agents
- Search and retrieval optimization strategies

## Usage Examples
```
/memory "New tax regime changes for 2024"
/memory https://example.com/article "focus on key takeaways"
/memory https://youtube.com/watch?v=xyz "extract main concepts only"
/memory "Meeting insights about project Alpha" #project/alpha #urgent
```

For complete implementation details, refer to `.essence/agents/memory-agent.yaml`