import pandas as pd

df = pd.read_excel('Online Retail.xlsx')

df = df.dropna(subset=['Description'])
df = df.dropna(subset=['CustomerID'])
df = df[df['Quantity'] > 0]
df = df[df['UnitPrice'] > 0]

df['Revenue'] = df['Quantity'] * df['UnitPrice']

df.to_excel('online_retail_cleaned.xlsx', index=False)

print('Data cleaned successfully')
