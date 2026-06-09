# DAX Measures

Revenue =
SUMX('Online Retail',
'Online Retail'[Quantity] *
'Online Retail'[UnitPrice])

Total Orders =
DISTINCTCOUNT('Online Retail'[InvoiceNo])

Total Customers =
DISTINCTCOUNT('Online Retail'[CustomerID])

Total Quantity Sold =
SUM('Online Retail'[Quantity])
