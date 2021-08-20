import demoRepoC AS repoC;
import demoRepoD AS repoD;
import layout, format;

EXPORT rawCustomerAsText(layout.rawCustomerRec customer) :=
     repoC.format.personAsText(customer.user) + ': ' + repoD.format.formatMoney(customer.balance) +
     ' {' + format.rawTransactionsAsText(customer.transactions) + '}';
