---
name: bus-web-research
description: Source-backed business web research for market scans, vendor comparisons, competitor research, pricing checks, trend summaries, customer or industry research, and "look this up" requests. Use when the user asks to research options, compare companies/products, find recent information, summarize external sources, validate claims, or produce cited business recommendations.
---

# Business Web Research

Use this skill to turn external sources into a concise, source-backed business answer.

## Workflow

1. Clarify the research objective.
   - Identify the business decision, audience, geography, time horizon, and required output.
   - If the objective is ambiguous but low-risk, make a reasonable assumption and state it.
   - Ask only when missing context would materially change the research direction.

2. Set freshness requirements.
   - Verify current information for prices, vendors, regulations, leadership, product features, availability, benchmarks, and news.
   - Treat dated source material as historical context unless the user explicitly asks for history.

3. Search broadly, then narrow.
   - Start with primary sources where possible: company pages, filings, documentation, pricing pages, public datasets, official announcements, standards bodies, or regulator pages.
   - Use reputable secondary sources for market context, commentary, and independent validation.
   - Compare at least two credible sources for important claims when feasible.

4. Evaluate source quality.
   - Prefer sources with clear publication dates, named authors or institutions, transparent methodology, and direct evidence.
   - Flag vendor marketing claims, affiliate rankings, anonymous posts, stale reports, or unsupported estimates.
   - Distinguish observed facts from inference, judgment, or recommendation.

5. Synthesize for the decision.
   - Lead with the answer or recommendation, not a source-by-source digest.
   - Group evidence by decision criteria such as cost, fit, risk, implementation effort, maturity, and tradeoffs.
   - Include links for sources used and avoid unsupported certainty.

6. Close with gaps and next steps.
   - Name the assumptions, unresolved questions, and what would change the conclusion.
   - Suggest focused follow-up research only when it would improve the user's decision.

## Output

Use `references/research-report-template.md` for reports, vendor comparisons, or research summaries. For quick answers, keep the same discipline but shorten the structure.
