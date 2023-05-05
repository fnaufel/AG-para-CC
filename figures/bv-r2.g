batch bv_exemplo1()
{
    batch init();
    function factored_bivector();

    init(0);
    grey_canvas(1);

    dynamic{problem2D: camori = 1;} // essentially 2D
	campos = 1.100000e-002*e1 + -1.430000e-001*e2 + 1.100000e+001*e3;

    v = e1 + 2*e2;
    //v = show(blue(v))

    w = 3*e1 - e2;
    //w = show(red(w));

    vw = show(yellow(dm2(factored_bivector(v, w))));
    lv = 0.5*v - 0.3*e1;
    label(lv, "\eqn{\bold{v}}");
    lw = 1.1*v + 0.5*w;
    label(lw, "\eqn{\bold{w}}");
    lbv = 0.5*(v+w);
    label(lbv, "\eqn{\bold{v \op w}}");
}

