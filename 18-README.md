# Operating expense budget versus actual

**Status: synthetic build-in-progress case study, not a completed Power BI report.**

Prepared with assistant support for review, testing and adaptation. This is not presented as prior independent work or a real company engagement. No confidential employer data is included.

## Business question
Which department and expense line drives overspend without duplicating budget?

## Data and method
27 monthly department/account budget rows and 54 general-ledger entries. Shared dimensions filter separate facts. No fact-to-fact join or repeated-budget summation.

## Reference results and limits
Synthetic budget is EGP 351,000 versus actual EGP 361,890, an adverse EGP 10,890 variance. Positive expense variance means overspend. The budget is one fixed plan; no forecast or time-intelligence implementation is claimed.

All figures describe the designed synthetic scenario, not an actual business outcome. Reference calculations and input checks were performed outside Power BI. They are acceptance targets, not proof that the M, DAX or native model works.

## Included assets
Synthetic input data, data dictionary, model specification, Power Query M source, DAX measure source, report-build steps and expected-results tests. See the supplied build documentation for table grains, relationship directions, measure definitions, tests and exclusions.

## Not yet implemented or verified
No PBIX or completed native Power BI report is included. M and DAX have not been executed in Power BI Desktop. Relationships, refresh, visuals, slicers, drill-through and interactions still need native implementation and testing. No RLS, incremental refresh, gateway or built-in time intelligence is claimed.

## Completion criteria
Import and type the source data; validate keys and relationships; create each measure; compare whole-data and filtered results; test interactions; save and reopen PBIX; record the Desktop version and refresh/test results; capture actual report and Model view screenshots. Update this status only after those checks pass.
