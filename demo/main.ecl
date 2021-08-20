import layout;
import format;

customers := DATASET([
    { 'gavin', 'p@ssword', 1.23456D, [ { 1000 }, { -3.1415 }, { 200 }, { -760 }] },
    { 'descartes', 'think', 9876.54321D, [ ] }
], layout.rawCustomerRec);

p := PROJECT(customers, TRANSFORM({utf8 text}, SELF.text := format.rawCustomerAsText(LEFT)));

EXPORT main := output(p);