import DemoRepoC as C;
export customerRec := RECORD
    C.layout.person user;
    DATASET($.transactionRec) transactions;
END;
