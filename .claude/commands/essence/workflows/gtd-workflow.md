---
type: workflow
extends: base-command
dependencies: [capture-agent, task-agent, review-agent, context-manager]
tags: [productivity, gtd, workflow, organization]
version: 1.0
description: Getting Things Done (GTD) methodology workflow implementation
argument-hint: [phase] [context?]
context-required: [inbox, projects, contexts, someday-maybe]
---

# GTD Workflow

**IMPORTANT**: This command strictly follows the rules defined in `.essence/workflows/gtd-workflow.yaml`. All implementations must adhere to the specifications in that YAML file.

## Instructions for Agent
1. **Load Configuration**: Read and strictly follow all rules from `.essence/workflows/gtd-workflow.yaml`
2. **Apply GTD Settings**: Use GTD methodology, phases, and process settings as defined
3. **Follow Templates**: Use GTD templates and output formats specified in the YAML
4. **Integrate Systems**: Connect with capture, task, review, and context agents as configured
5. **Maintain Standards**: Use standard tags, contexts, and error handling as defined

## Configuration Reference
All detailed specifications are stored in `.essence/workflows/gtd-workflow.yaml` including:
- GTD methodology implementation workflows
- Five-phase GTD process definitions
- GTD templates and formats  
- Context management patterns
- Integration patterns with all agents
- Error handling and optimization strategies

For complete implementation details, refer to `.essence/workflows/gtd-workflow.yaml`

