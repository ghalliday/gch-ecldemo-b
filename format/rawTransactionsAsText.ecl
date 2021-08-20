import layout;

EXPORT rawTransactionsAsText(DATASET(layout.rawTransactionRec) transactions) := FUNCTION
    rec := { STRING result; };
    agg := AGGREGATE(transactions, rec, TRANSFORM(rec, SELF.result := RIGHT.result + $.rawTransactionAsText(LEFT) + ', '));
    result := agg[1].result;
    RETURN result[1..LENGTH(result)-2];
END;
