pair = lambda f. lambda s. lambda b. b f s;

tr = lambda x. lambda y. x;
fs = lambda x. lambda y. y;
fst = lambda p. p tr;
snd = lambda p. p fs;
c0 = lambda s. lambda z. z;
c1 = lambda s. lambda z. s z;
c2 = lambda s. lambda z. s (s z);
c3 = lambda s. lambda z. s (s (s z));
c4 = lambda s. lambda z. s (s (s (s z)));
plus = lambda m. lambda n. lambda s. lambda z.m s(n s z);
zz = pair c0 c0;
ss = lambda p. pair (snd p) (plus c1 (snd p));
prd = lambda m. fst (m ss zz);
and = lambda x. lambda y. x y fs;
minus = lambda m. lambda n. n prd m;
iszero = lambda m. m (lambda x. f) tr;
isequal = (lambda m. lambda n. and(iszero (m prd n)) (iszero (n prd m)));
church_to_bool = lambda cb. cb true false;

/* >>>>>>> tests after this line <<<<< */

church_to_bool (isequal c2 c1);
church_to_bool (isequal c2 c2);
