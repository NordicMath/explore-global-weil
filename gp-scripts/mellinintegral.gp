
integrand(x, s, L) = (-log(x))^(-s) * gamma(s) * lfun(L, s)

m_maybe(x, c, L) = 1/(2*Pi*I*x) * intnum(X=-10, 10, integrand(x, c + X * I, L))
