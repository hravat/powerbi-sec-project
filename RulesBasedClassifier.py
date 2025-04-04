import pandas as pd
import re

category_rules = {
    "Assets": [
        "Cash", "Receivables", "Receivable", "Inventory", "PPE", "Investments", "Intangible", "Deferred Tax", "Property",
        "Plant", "Equipment", "Goodwill", "Assets", "Prepaid", "LeaseRight", "CurrentAssets", "NonCurrentAssets",
        "CashEquivalents", "AccountReceivable", "AccountsReceivable", "Amortization", "Depreciation", "Depletion",
        "Impairment", "Nuclear Fuel", "WarrantsAsset"
    ],
    "Liabilities": [
        "Payable", "Debt", "Accrued", "Leases", "Revenue", "Tax", "Financing", "Obligations", "Liabilities", "Deferred",
        "CurrentLiabilities", "NonCurrentLiabilities", "Interest", "Expense", "ShortTermDebt", "LongTermDebt",
        "IncomeTaxesPayable", "AccountsPayable", "AccountsPayableOther", "WarrantyLiability"
    ],
    "Equity": [
        "Stock", "Retained Earnings", "Capital", "Treasury", "Preferred", "CommonStock", "Equity", "ContributedCapital",
        "APIC", "PaidInCapital", "Dividends", "AccumulatedOtherComprehensiveIncome", "AccumulatedDeficit"
    ]
}

# Define subcategory keywords for classification
subcategory_rules = {
    "Current": ["Current", "Short-Term", "Due", "Payable", "Receivable", "Accrued", "Debt", "Liabilities", "Other", "Excluding", "Net", "Portion"],
    "Non-Current": ["Long-Term", "Noncurrent", "NoncurrentAssets", "NoncurrentLiabilities", "Deferred", "LongTermDebt", "NonCurrent", "Depreciation", "Amortization", "Depletion", "Impairment"]
}

def classify_tag(tag):
    """
    Classifies a given tag into a category and subcategory based on predefined rules.
    """
    tag_lower = tag.lower()

    # Blanket rule for Warrants classification
    if "warrant" in tag_lower or "warrants" in tag_lower:
        if "asset" in tag_lower:
            return "Assets", "Non-Current"
        if "outstanding" in tag_lower or "reserve" in tag_lower:
            return "Equity", "Equity"
        if "current" in tag_lower or "portion" in tag_lower:
            return "Liabilities", "Current"
        if "noncurrent" in tag_lower or "longterm" in tag_lower:
            return "Liabilities", "Non-Current"
        return "Liabilities", "Non-Current"  # Default for Warrants

    # Special handling for Accumulated Depreciation & Amortization
    if "accumulated" in tag_lower and ("depreciation" in tag_lower or "amortization" in tag_lower or "depletion" in tag_lower):
        return "Assets", "Non-Current"

    # Special handling for Accumulated Deficit (Equity)
    if "accumulateddeficit" in tag_lower:
        return "Equity", "Equity"

    # Check for high-level categories
    category = "Unclassified"
    for key, keywords in category_rules.items():
        if any(keyword.lower() in tag_lower for keyword in keywords):
            category = key
            break
    
    # Check for subcategories based on keywords in the tag
    subcategory = "Non-Current"  # Default assumption
    for subcategory_key, keywords in subcategory_rules.items():
        if any(keyword.lower() in tag_lower for keyword in keywords):
            subcategory = subcategory_key
            break
    
    return category, subcategory

# Read input CSV containing the tags (make sure your CSV file has a column named 'tag')
input_csv = '/content/data.csv'  # Replace with the actual file path
df = pd.read_csv(input_csv)

# Create an empty list to store the classification results
classification_results = []

# Classify each tag and store the result
for tag in df['tag']:
    category, subcategory = classify_tag(tag)
    classification_results.append([tag, category, subcategory])

# Create a DataFrame from the classification results
classification_df = pd.DataFrame(classification_results, columns=['tag', 'category', 'subcategory'])

# Write the results to an output CSV file
output_csv = '/content/output_classified_tags.csv'  # Replace with the desired output file path
classification_df.to_csv(output_csv, index=False)

print(f"Classification complete. Results saved to {output_csv}")
