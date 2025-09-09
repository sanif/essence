---
type: workflow
extends: base-command
dependencies: [review-agent, goal-agent, task-agent, health-agent, capture-agent]
tags: [productivity, weekly, review, planning, gtd]
version: 1.0
description: Comprehensive weekly review and planning workflow
argument-hint: [phase] [focus?]
context-required: [weekly-notes, goals, daily-summaries]
---

# Weekly Workflow

**IMPORTANT**: This command strictly follows the workflow rules defined in `.essence/workflows/weekly-workflow.yaml`. All implementations must adhere to the specifications in that YAML file.

## Purpose
Comprehensive weekly review and planning system that synthesizes daily data, evaluates progress, optimizes systems, and sets strategic direction for the coming week.

## Instructions for Agent
1. **Load Configuration**: Read and follow all workflow steps from `.essence/workflows/weekly-workflow.yaml`
2. **Execute Phases**: Run the appropriate workflow phase (review, analysis, planning, or full)
3. **Apply Templates**: Use the templates specified in the YAML configuration
4. **Integrate Systems**: Connect with other agents as defined in the integration patterns
5. **Generate Outputs**: Provide formatted output as specified in the YAML

## Workflow Phases
All detailed workflow steps are defined in `.essence/workflows/weekly-workflow.yaml`:
- **Full Workflow**: 45-60 minute comprehensive review with 6 sequential phases
- **Quick Workflow**: 20-30 minute abbreviated review with 5 key steps
- **Data Collection**: Metrics aggregation and weekly note setup
- **Comprehensive Review**: Quantitative analysis and qualitative reflection
- **Goal Progress**: Assessment and alignment verification
- **System Optimization**: Workflow and habit analysis
- **Strategic Planning**: Theme setting and priority architecture

## Templates Available
- **Comprehensive Weekly Review**: Full template with all metrics and analysis sections
- **Quick Weekly Dashboard**: Condensed format focusing on key insights and next actions

## Integration Patterns
The workflow integrates with:
- **Daily Workflows**: Aggregating daily data into weekly insights
- **Goal Management**: Progress tracking and strategy adjustments
- **Monthly/Quarterly Reviews**: Scaling patterns and trend analysis

For complete workflow specifications and templates, refer to `.essence/workflows/weekly-workflow.yaml`