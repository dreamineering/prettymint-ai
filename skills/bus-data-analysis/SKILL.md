---
name: bus-data-analysis
description: Analyzes business data from CSV, XLSX-style tables, pasted spreadsheets, metric exports, sales data, finance data, support queues, operational logs, or dashboards. Use when the user asks to summarize trends, compare periods, find anomalies, calculate metrics, explain changes, inspect data quality, or turn tabular data into business insights.
---

# Business Data Analysis

Use this skill to analyze tabular business data and explain what changed, what matters, and what is uncertain.

## Workflow

1. Inspect the data source.
   - Determine file type, fields, row counts, date ranges, units, currencies, segments, and missing values.
   - Prefer structured parsing tools for CSV, spreadsheet, or JSON data when available.
   - Do not assume metric definitions; infer cautiously and state assumptions.

2. Validate before analyzing.
   - Check for duplicate rows, missing keys, outliers, inconsistent dates, mixed currencies, formatting issues, and aggregation pitfalls.
   - Confirm whether values are raw observations, already aggregated metrics, or percentages.

3. Calculate business-relevant views.
   - Summarize totals, averages, rates, mix, period-over-period changes, segment changes, and top contributors as appropriate.
   - Break down changes by time, customer, product, channel, region, owner, or status when those dimensions exist.
   - Use simple, auditable calculations unless the user asks for modeling.

4. Explain patterns and anomalies.
   - Separate what the data shows from possible causes.
   - Flag spikes, drops, missing periods, concentration risk, unusual segments, and metric definition issues.
   - Avoid attributing causality unless the data supports it.

5. Produce an actionable summary.
   - Lead with the most important business findings.
   - Include assumptions, data quality concerns, and recommended follow-up checks.
   - Use tables where they improve readability.

## Output

Use `references/analysis-checklist.md` for larger analyses or when data quality is uncertain.
