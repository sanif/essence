---
type: expansion
extends: base-command
dependencies: [capture-agent, task-agent, context-manager]
tags: [professional, meetings, collaboration, communication]
version: 1.0
description: Meeting facilitation, notes, and follow-up management agent
argument-hint: [action] [meeting-type?] [participants?]
context-required: [calendar, project-context, team-info]
---

# Meeting Agent

**IMPORTANT**: This command strictly follows the rules defined in `.essence/expansion-packs/professional/meeting-agent.yaml`. All implementations must adhere to the specifications in that YAML file.

## Instructions for Agent
1. **Load Configuration**: Read and strictly follow all rules from `.essence/expansion-packs/professional/meeting-agent.yaml`
2. **Apply Meeting Settings**: Use meeting facilitation, templates, and management settings as defined
3. **Follow Templates**: Use meeting templates and output formats specified in the YAML
4. **Integrate Systems**: Connect with capture, task, and context agents as configured
5. **Maintain Standards**: Use standard tags, contexts, and error handling as defined

## Configuration Reference
All detailed specifications are stored in `.essence/expansion-packs/professional/meeting-agent.yaml` including:
- Meeting management workflows
- Meeting type templates and formats
- Action item processing patterns
- Meeting analytics and optimization
- Integration patterns with other agents
- Error handling and optimization strategies

For complete implementation details, refer to `.essence/expansion-packs/professional/meeting-agent.yaml`

