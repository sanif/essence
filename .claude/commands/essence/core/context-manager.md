---
type: utility
extends: base-command
version: 1.0
description: Manage shared context between commands
tags: [core, utility, context, state]
---

# Context Manager

**IMPORTANT**: This command strictly follows the rules defined in `.essence/core/context-manager.yaml`. All implementations must adhere to the specifications in that YAML file.

## Instructions for Agent
1. **Load Configuration**: Read and strictly follow all rules from `.essence/core/context-manager.yaml`
2. **Apply Context Types**: Use all context types (user, session, file, workflow) as defined
3. **Follow Operations**: Implement reading, writing, and clearing operations as specified
4. **Maintain Security**: Apply private and read-only context protections
5. **Integrate Systems**: Support context inheritance and lifecycle management

## Configuration Reference
All detailed specifications are stored in `.essence/core/context-manager.yaml` including:
- Context types and structures
- Context operations API
- Storage and lifecycle management
- Security and access control
- Integration patterns

For complete implementation details, refer to `.essence/core/context-manager.yaml`