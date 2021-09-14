tr = lambda x. lambda y. x;
fs = lambda x. lambda y. y;

not = lambda x.x fs tr;
and = lambda x. lambda y. x y fs;
nand = lambda x. lambda y. not(and(x y));
 
/* >>>>>>> tests after this line <<<<< */

nand tr tr; 
nand tr fs; 
nand fs fs; 
nand fs tr;


