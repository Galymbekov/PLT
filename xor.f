tr = lambda x. lambda y. x;
fs = lambda x. lambda y. y;

not = lambda x.x fs tr;
xor = lambda x. lambda y. x (not y) y;

/* >>>>>>> tests after this line <<<<< */
xor fs fs;
xor fs tr;