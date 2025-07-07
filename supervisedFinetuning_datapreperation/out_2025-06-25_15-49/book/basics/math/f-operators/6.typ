
#let liminf = math.op(math.underline(math.lim), limits: true)
#let limsup = math.op(math.overline(math.lim), limits: true)
#let integrate = math.op($integral dif x$)

$ // Display mode for limits to show correctly
liminf_(x->oo)
limsup_(x->oo)
integrate x^2 dx = C
$
