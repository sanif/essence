---
type: agent
extends: base-command
dependencies: [context-manager, reminder.sh]
tags: [productivity, tasks, gtd]
version: 1.0
description: Specialized task management agent
argument-hint: [task(s) description - supports multiple tasks] [due date/time] [reminder?]
context-required: [daily-note, user-prefs]
---

# Task Agent

## Activation Protocol
**CRITICAL**: Before executing any command logic, MUST first display the activation sequence from `.essence/agents/task-agent.yaml`:
1. Display the ASCII art from `activation.ascii_art`
2. Show the greeting from `activation.greeting` 
3. Show the tagline from `activation.tagline`
4. Play activation sound if specified in `activation.activation_sound`

**IMPORTANT**: This command strictly follows the rules defined in `.essence/agents/task-agent.yaml`. All implementations must adhere to the specifications in that YAML file.

## Instructions for Agent
1. **Load Configuration**: Read and strictly follow all rules from `.essence/agents/task-agent.yaml`
2. **Parse Input**: Use multi-task parsing capabilities to automatically identify multiple tasks
3. **Apply Task Settings**: Use task format, priority system, and reminder settings as defined
4. **Follow Templates**: Use task templates and output formats specified in the YAML
5. **Integrate Systems**: Connect with Mac Reminders and other agents as configured
6. **Maintain Standards**: Use standard tags, contexts, and error handling as defined

## Multi-Task Processing Workflow
1. **Input Analysis**: Determine if input contains single or multiple tasks using detection patterns
2. **Task Extraction**: Apply appropriate parsing algorithm based on identified format
3. **Task Validation**: Ensure each extracted task is actionable and well-formed
4. **Metadata Application**: Apply shared due dates, reminders, and tags to all tasks
5. **Individual Creation**: Create each task separately while maintaining relationships
6. **Summary Output**: Provide clear feedback on parsing results and task creation

## Configuration Reference
All detailed specifications are stored in `.essence/agents/task-agent.yaml` including:
- Task creation and management workflows
- Mac Reminders integration patterns
- Task templates and formats
- Priority systems and time estimation
- Integration patterns with other agents
- Error handling and optimization strategies

For complete implementation details, refer to `.essence/agents/task-agent.yaml`