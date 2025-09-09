---
type: workflow
extends: base-command
dependencies: [task-agent, health-agent, review-agent, capture-agent]
tags: [productivity, daily, routine, workflow]
version: 1.0
description: Comprehensive daily workflow orchestrating multiple agents
argument-hint: [mode] [focus?]
context-required: [daily-note, user-schedule, goals]
---

# Daily Workflow

**IMPORTANT**: This command strictly follows the rules defined in `.essence/workflows/daily-workflow.yaml`. All implementations must adhere to the specifications in that YAML file.

## Instructions for Agent
1. **Load Configuration**: Read and strictly follow all rules from `.essence/workflows/daily-workflow.yaml`
2. **Apply Workflow Settings**: Use workflow sequences, templates, and coordination settings as defined
3. **Follow Templates**: Use workflow templates and output formats specified in the YAML
4. **Integrate Systems**: Connect with task, health, review, and capture agents as configured
5. **Maintain Standards**: Use standard tags, contexts, and error handling as defined

## Configuration Reference
All detailed specifications are stored in `.essence/workflows/daily-workflow.yaml` including:
- Daily workflow orchestration patterns
- Agent coordination sequences
- Workflow templates and formats
- Context integration rules
- Integration patterns with all agents
- Error handling and optimization strategies

For complete implementation details, refer to `.essence/workflows/daily-workflow.yaml`

