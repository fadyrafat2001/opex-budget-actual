// UNEXECUTED M SOURCE. Create text parameter WorkbookPath with full local XLSX path.
// Create this function as fxSheet; invoke it once per data sheet below.
(sheetName as text) as table =>
let
    Source = Excel.Workbook(File.Contents(WorkbookPath), null, true),
    Data = Source{[Item=sheetName, Kind="Sheet"]}[Data],
    Headers = Table.PromoteHeaders(Data, [PromoteAllScalars=true])
in
    Headers

// Separate query named FactBudget:
let
    Source = fxSheet("FactBudget"),
    Typed = Table.TransformColumnTypes(Source, {{"Month", type text}, {"Department", type text}, {"Account", type text}, {"Budget_EGP", type number}}, "en-US")
in
    Typed

// Separate query named FactActual:
let
    Source = fxSheet("FactActual"),
    Typed = Table.TransformColumnTypes(Source, {{"Entry_ID", type text}, {"Month", type text}, {"Department", type text}, {"Account", type text}, {"Actual_EGP", type number}}, "en-US")
in
    Typed

// Separate query named DimMonth:
let
    Source = fxSheet("DimMonth"),
    Typed = Table.TransformColumnTypes(Source, {{"Month", type text}}, "en-US")
in
    Typed

// Separate query named DimDepartment:
let
    Source = fxSheet("DimDepartment"),
    Typed = Table.TransformColumnTypes(Source, {{"Department", type text}}, "en-US")
in
    Typed

// Separate query named DimAccount:
let
    Source = fxSheet("DimAccount"),
    Typed = Table.TransformColumnTypes(Source, {{"Account", type text}}, "en-US")
in
    Typed

