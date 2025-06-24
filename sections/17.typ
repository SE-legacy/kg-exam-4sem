#import "../conf.typ": lets, theorem

#grid(columns: 2,
image(width: 70%, "../imgs/010.png"),
image(width: 97%, "../imgs/011.png")
)

*Вход*: ось (задана единичным вектором $overline(n)$), точка $P$, соответствующий радиус-вектор $overline(p)$, угол $delta$

*Выход*: $overline(p')$ --- радиус-вектор повёрнутой точки $P^'$

#theorem[
  Формула Родригеса имеет вид:
  $
    M = E + [overline(n)]_times sin delta + [overline(n)]_times^2 (1 - cos delta), " где" \
    overline(n) space #[--- ось вращения], space delta #[--- угол вращения]
  $
][
Доказательство состоит из пяти этапов:
+ Вычислить $overline(p)_perp, overline(p)_parallel$
+ $overline(r) = overline(n) times overline(p)_perp$
+ Вычислить $overline(p')_perp$
+ $overline(p') = overline(p')_perp + overline(p)_parallel$
+ Привести к виду $M = E + [overline(n)]_times sin delta + [overline(n)]_times^2$

#lets $overline(p) = overline(p)_parallel + overline(p)_perp$, $overline(p)_parallel parallel overline(n)$

1. Вычислим $overline(p)_perp, overline(p)_parallel$.

По свойству скалярного произведения:
$overline(p)_parallel = (overline(p)overline(n)) overline(n)$

Тогда $overline(p)_perp = overline(p) - overline(p)_parallel$.

2. #lets $overline(r) = overline(n) times overline(p)_perp$, тогда $overline(r)$ перпердикулярен как $overline(n)$, так и $overline(p)_perp$

3. Выразим $overline(p')_perp = overline(p)_perp cos delta + overline(r) sin delta$

4. $overline(p') = #text(fill: red)[$overline(p')_perp$] + overline(p)_parallel limits(=) #text(fill: red)[#text(fill:orange)[$overline(p)_perp$]$ cos delta + overline(r) sin delta$] + #text(fill: blue)[$overline(p)_parallel$] = #text(fill: blue)[$(overline(p) overline(n)) overline(n)$] + #text(fill:orange)[$(overline(p) - (overline(p) overline(n)) overline(n))$] cos delta + #text(fill: red)[$(overline(n) times overline(p)_perp)$] sin delta = #text(fill: orange)[$overline(p)$] #text(fill: green)[$cos delta$] + #text(fill:blue)[$(overline(p) overline(n)) overline(n)$] #text(fill: orange)[$- (overline(p) overline(n)) overline(n)$] cos delta + #text(fill: red)[$[overline(n)]_times overline(p)$] sin delta = #text(fill: green)[$(E cos delta) overline(p)$] + (#text(fill: blue)[$1$] #text(fill: orange)[$- cos(delta)$])(overline(p) overline(n)) overline(n) + [overline(n)]_times overline(p) sin delta$

5. $(overline(n) overline(p)) overline(n) = (overline(p) overline(n)) overline(n) = overline(n) overline(n)^T overline(p) => (1 - cos delta) (overline(p) overline(n)) = overline(n) overline(n)^T overline(p) = (1 - cos delta)([overline(n)]_times^2 + E)$

$overline(p') = (E cos delta) overline(p) + (1 - cos(delta))(overline(p)overline(n))overline(n) + [overline(n)]_times overline(p) sin delta = (E cos delta) overline(p) + (1 - cos(delta)) ([overline(n)]_times^2 + E) overline(p) + [overline(n)]_times overline(p) sin delta = E overline(p) + (1 - cos delta) [overline(n)]_times^2 overline(p) + [overline(n)]_times overline(p) sin delta = M overline(p)$, где

$
M = E + (1 - cos(delta)) [overline(n)]_times^2 + [overline(n)]_times sin delta
$


]
