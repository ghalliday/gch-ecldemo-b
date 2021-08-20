import layout;
import demoRepoD AS repoD;

EXPORT rawTransactionAsText(layout.rawTransactionRec trans) := (string)repoD.format.formatMoney(trans.change);
