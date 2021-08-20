import DemoRepoC as C;
export customerRec := RECORD
    C.layout.person user;
    DECIMAL30_6 balance;
    DATASET($.transactionRec) transactions;
END;
