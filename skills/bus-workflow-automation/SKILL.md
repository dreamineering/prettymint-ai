---
name: bus-workflow-automation
description: Designs repeatable business workflows, runbooks, checklists, SOP automation plans, intake processes, escalation paths, QA steps, handoffs, and operational playbooks. Use when the user asks to create a runbook, automate a manual process, standardize operations, document a workflow, define triggers and roles, or map exceptions and approvals.
---

# Workflow Automation

Use this skill to turn repeatable business operations into reliable workflows, runbooks, and automation-ready procedures.

## Workflow

1. Define the process boundary.
   - Identify the trigger, objective, start state, end state, frequency, volume, and business owner.
   - Note systems, teams, inputs, outputs, and required approvals.
   - Keep the workflow scoped to one repeatable process unless the user asks for a broader operating model.

2. Map the current or desired flow.
   - List each step in order with role, system, input, output, and decision point.
   - Separate human judgment from deterministic work.
   - Identify handoffs, waiting states, rework loops, and escalation points.

3. Design for reliability.
   - Add validation checks, acceptance criteria, audit trail needs, and failure handling.
   - Define exception paths for missing data, SLA misses, rejected approvals, duplicate requests, and ambiguous ownership.
   - Include QA steps for high-risk or customer-facing work.

4. Identify automation opportunities.
   - Mark steps as manual, assisted, or automatable.
   - Recommend automation only where inputs are structured enough and failure modes are understood.
   - Preserve human approval for judgment-heavy, legal, financial, security, or brand-sensitive decisions.

5. Produce an operational handoff.
   - Write steps as commands or checks that an operator can execute.
   - Include roles, SLAs, escalation paths, and definition of done.
   - Keep the result project-agnostic unless the user provides specific tools.

## Output

Use `references/runbook-template.md` for runbooks, SOPs, and automation design handoffs.
