tr = lambda x. lambda y. x;
fs = lambda x. lambda y. y;
not = lambda x.x fs tr;
tf = lambda x.x tr fs;

/* >>>>>>> tests after this line <<<<< */

not tr;
not fs;




