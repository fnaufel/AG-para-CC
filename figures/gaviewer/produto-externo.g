batch fig_area_r2()
{
    batch init();
    batch orient();
    function factored_bivector();
    function move_vector();

    init(0);
    grey_canvas(1);
    fontsizeinit(0);

    v = e1 + 2*e2;
    w = 3*e1 - e2;

    vw = show(alpha(blue(factored_bivector(v, w)), 0.2));

    v = show(blue(v));
    lv = 0.5*v - 0.3*e1;
    label(lv, "\eqn{\bold{v}}");

    ww = show(red(move_vector(w, v)));
    lww = v + 0.3*normalize(v) + 0.5*w;
    label(lww, "\eqn{\bold{w}}");

    lbv = 0.5*(v+w);
    orient(lbv, v^w, 0.5, 0, 0, 0, 1);
}


batch fig_area_r2_2()
{
    batch init();
    batch orient();
    function factored_bivector();
    function move_vector();

    init(0);
    grey_canvas(1);
    fontsizeinit(0);

    v = e1 + 2*e2;
    w = 3*e1 - e2;

    vw = show(alpha(red(factored_bivector(w, v)), 0.2));

    v_moved = show(blue(move_vector(v, w)));
    lv = w + 0.5*v + 0.2*e1;
    label(lv, "\eqn{\bold{v}}");

    w = show(red(w));
    lw = 0.5*w - 0.2*e2;
    label(lw, "\eqn{\bold{w}}");

    lbv = 0.5*(v+w);
    orient(lbv, w^v, 0.5, 0, 0, 0, 1);
}

