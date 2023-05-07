batch eixos() {
    batch init();
    init(0);
    grey_canvas(1);
    cmd("fontsize 36");
    
    v = show(blue(0.8*e1));
    lv = 0.7*v - 0.1*e2;
    label(lv, "\eqn{\bold{e_{1}}}");
    
    w = show(red(0.8*e2));
    lw = 0.9*w - 0.3*e1;
    label(lw, "\eqn{\bold{e_{2}}}");

    vv = show(black(0.4*e1 + 0.8*e2));
    lvv = vv + 0.05*e1;
    label(lvv, "\eqn{\bold{v}}");
}


batch retas() {
    batch init();
    function move_vector();

    init(0);
    grey_canvas(1);
    fontsizeinit(0);

    v = e1 + 2*e2;

    deltav = -1*e1;
    vv = 0.5 * move_vector(v, deltav);
    posv = deltav + 0.55*v;
    label(posv, "\eqn{\bold{v}}");
    vv = show(blue(vv));

    w = -v;
    deltaw = -1.5*e1 + 0.5*v;
    ww = 0.5 * move_vector(w, deltaw);
    posw = deltaw + 0.52*w;
    label(posw, "\eqn{\bold{w}}");
    ww = show(blue(ww));

    p1 = show(blue(c3ga_point(no)));
    label(p1 + 0.1*e1 + 0.1*e2, "\eqn{O}");
    reta1 = show(blue((c3ga)(c3ga_point(p1)^v^ni)));
    posr = 0.5*v + 0.02*e1;
    label(posr, "\blue{\eqn{r}}");

    p2 = blue(c3ga_point(0.5*e1));
    reta2 = show(gray((c3ga)(c3ga_point(p2)^v^ni)));
    
    p3 = blue(c3ga_point(e1));
    reta3 = show(gray((c3ga)(c3ga_point(p3)^v^ni)));

    p4 = blue(c3ga_point(-0.5*e1));
    reta4 = show(gray((c3ga)(c3ga_point(p4)^v^ni)));
    
    
}


batch retas2() {
    batch init();
    function move_vector();

    init(0);
    grey_canvas(1);
    fontsizeinit(0);

    v = e1 + 2*e2;

    deltav1 = -1*e1;
    v1 = 0.5 * move_vector(v, deltav1);
    posv1 = deltav1 + 0.55*v;
    label(posv1, "\eqn{\bold{v_{1}}}");
    v1 = show(blue(v1));

    deltav2 = -1.5*e1;
    v2 = 0.35 * move_vector(v, deltav2);
    posv2 = deltav2 + 0.36*v;
    label(posv2, "\eqn{\bold{v_{2}}}");
    v2 = show(blue(v2));

    deltav3 = -2*e1;
    v3 = 0.25 * move_vector(v, deltav3);
    posv3 = deltav3 + 0.26*v;
    label(posv3, "\eqn{\bold{v_{3}}}");
    v3 = show(blue(v3));

    p1 = show(blue(c3ga_point(no)));
    label(p1 + 0.1*e1 + 0.1*e2, "\eqn{O}");
    reta1 = show(blue((c3ga)(c3ga_point(p1)^v^ni)));
    posr = 0.5*v + 0.02*e1;
    label(posr, "\blue{\eqn{r}}");
    
}


batch areavw()
{
    batch init();
    batch orient();
    function factored_bivector();
    function move_vector();

    init(0);
    grey_canvas(1);
    fontsizeinit(0);

    v = e1 + 2*e2;
    w = 3*e1 + e2;

    vw = show(alpha(blue(factored_bivector(v, w)), 0.2));

    v = show(blue(v));
    lv = 0.5*v - 0.3*e1;
    label(lv, "\eqn{\bold{v}}");

    ww = show(red(move_vector(w, v)));
    lww = 1.1*v + 0.3*normalize(v) + 0.5*w;
    label(lww, "\eqn{\bold{w}}");

    lbv = 0.5*(v+w);
    orient(lbv, v^w, 0.5, 0, 0, 0, 1);
}


batch areawv()
{
    batch init();
    batch orient();
    function factored_bivector();
    function move_vector();

    init(0);
    grey_canvas(1);
    fontsizeinit(0);

    v = e1 + 2*e2;
    w = 3*e1 + e2;

    vw = show(alpha(red(factored_bivector(w, v)), 0.2));

    v_moved = show(blue(move_vector(v, w)));
    lv = w + 0.5*v + 0.2*e1;
    label(lv, "\eqn{\bold{v}}");

    w = show(red(w));
    lw = 0.5*w - 0.2*e2;
    label(lw, "\eqn{\bold{w}}");

    lbv = 0.15*e2 + 0.45*(v+w);
    orient(lbv, w^v, 0.5, 0, 0, 0, 1);
}

