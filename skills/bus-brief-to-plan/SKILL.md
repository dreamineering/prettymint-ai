---
name: bus-brief-to-plan
description: Converts messy business notes, call transcripts, meeting summaries, email threads, Slack discussions, brainstorms, or stakeholder briefs into execution plans. Use when the user asks to extract decisions, action items, owners, dates, risks, open questions, follow-ups, or turn notes into a plan.
---

# Brief To Plan

Use this skill to convert unstructured business context into a clear operating plan.

## Workflow

1. Identify the source and desired outcome.
   - Determine whether the input is meeting notes, a transcript, a stakeholder brief, a thread, or rough notes.
   - Infer the intended business objective and audience.
   - Preserve ambiguity instead of inventing details.

2. Extract the durable facts.
   - Capture decisions already made.
   - Capture commitments, owners, deadlines, dependencies, and constraints.
   - Separate stated facts from interpretation.

3. Build the action plan.
   - Convert commitments into concrete next actions.
   - Assign owners only when explicitly stated; otherwise mark owner as `TBD`.
   - Normalize dates into explicit calendar dates when provided or inferable from context.
   - Keep each action testable: someone should be able to tell whether it is done.

4. Surface risks and blockers.
   - Note unresolved decisions, missing inputs, dependencies, operational risks, stakeholder risks, and timing risks.
   - Explain impact and likely next step for each risk.

5. Ask follow-up questions sparingly.
   - Ask only questions that would change execution.
   - Group minor missing details under assumptions instead of interrupting.

6. Produce a usable handoff.
   - Lead with the plan, then decisions, risks, and questions.
   - Keep wording direct and business-ready.

## Output

Use `references/action-plan-template.md` for meeting recaps, execution plans, and follow-up emails. Adapt the headings to the user's requested format.
