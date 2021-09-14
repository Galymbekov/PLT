t = lambda x. lambda y. x;
f = lambda x. lambda y. y;
pair = lambda f. lambda s. lambda b. b f s;
fst = lambda p. p t;
snd = lambda p. p f;
c0 = lambda s. lambda z. z;
c1 = lambda s. lambda z. s z;
c2 = lambda s. lambda z. s (s z);
c3 = lambda s. lambda z. s (s (s z));
c4 = lambda s. lambda z. s (s (s (s z)));
lambdasucc = lambda m. succ m;
church_to_int = lambda n. n lambdasucc 0;
nil = pair t t;
cons = lambda h.lambda t. pair f (pair h t);
head = lambda z. fst (snd z);
tail = lambda z. snd (snd z);
isnil = fst;
list = lambda x. lambda y. lambda z. lambda c. lambda n. c x(c y(c z n));

/* >>>>>>> tests after this line <<<<< */

head (list c1 c2 c3);