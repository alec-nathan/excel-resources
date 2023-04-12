---Sample Net Cap Rate Query
SELECT
	f.*
FROM
[SampleDatabase].[dbo].[financialdata] f
WHERE ((f.[AccountName] = 'Rental Revenue' OR
f.[AccountName] = 'Fee Revenue' OR
f.[AccountName] = 'Bad Debt' OR
f.[AccountName] = 'Revenue Reductions' OR
f.[AccountName] = 'Maintenance Expenses' OR
f.[AccountName] = 'Turnover Expenses' OR
f.[AccountName] = 'Utility Expense' OR
f.[AccountName] = 'Insurance Expense' OR
f.[AccountName] = 'Property Taxes') AND
f.[FinancialPeriod] >= '2022-03-01' AND
f.[FinancialPeriod] <= '2023-03-01') OR
((f.[AccountName] = 'Purchase Price' OR
f.[AccountName] = 'Closing Costs' OR
f.[AccountName] = 'Initial Capital Expenditure' OR
f.[AccountName] = 'Other Capitalized Costs') AND
f.[FinancialPeriod] = '2023-03-01')