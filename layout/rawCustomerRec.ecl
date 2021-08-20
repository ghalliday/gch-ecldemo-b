import DemoRepoC as C;
export rawCustomerRec := RECORD
    C.layout.person user;
    DECIMAL30_6 balance;
    DATASET($.rawTransactionRec) transactions;
END;
