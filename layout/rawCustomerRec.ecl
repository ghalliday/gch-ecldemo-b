import DemoRepoC as C;
export rawCustomerRec := RECORD
    C.layout.person user;
    DATASET($.rawTransactionRec) transactions;
END;
