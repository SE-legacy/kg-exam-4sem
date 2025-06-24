#import "../conf.typ": lets, theorem, consequence
Трёхмерные преобразования в значительной мере перекликаются с двумерными и отличаются в первую очередь наличием ещё одного измерения.

Рассмотрим преобразование масштабирования для трёхмерного случая и его же в матричном виде:

#grid(columns: (1fr, 1fr),
$
cases(
  x^' = x dot S_x,
  y^' = y dot S_y,
  z^' = z dot S_z,
)
$,
$
vec(x', y', z') = mat(
  S_x, 0, 0;
  0, S_y, 0;
  0, 0, S_z
) vec(x, y, z)
$
)

Обратным преобразованием будет масштабирование на коэффициенты $1/S_x, 1/S_y, 1/S_z$.

#theorem[Преобразование поворота вокруг оси $O z$ имеет вид:
#grid(columns: (1fr, 1fr),
$
cases(
  x^''' = x cos delta - y sin delta,
  y^''' = x sin delta + y cos delta,
  z^''' = z,
  alpha^' = alpha
)
$,
$
"Rotate"_z (delta) = mat(
  cos delta, -sin delta, 0, 0;
  sin delta, cos delta, 0, 0;
  0, 0, 1, 0;
  0, 0, 0, 1
)
$
)
][
#lets $P$ --- начальная позиция, $P^'$ --- конечная позиция.

Поскольку поворот происходит вокруг оси $O z$, позиция точек по оси $z$ остаётся неизменной.

Также из определения окружности следует, что $|O_z P| = |O^'_z P^'|$, где $O_z$, $O^'_z$ --- проекция точки на ось $O z$
$
cases(
  x = |O_z P| cos beta,
  y = |O_z P| sin beta,
  z eq.triple "const"
)
$
$
cases(
  x' = |O'_z P| cos (beta + delta),
  y' = |O'_z P| sin (beta + delta),
  z' = z
) space cases(
  x' = |O_z P| (cos beta cos delta - sin beta sin delta),
  y' = |O_z P| (sin beta cos delta + cos beta sin delta),
  z' = z
) space cases(
  x' = x cos delta - y sin delta,
  y' = x sin delta + y cos delta,
  z' = z
)
$
В матричном виде:
$
vec(x', y', z') = mat(
  cos delta, -sin delta, 0;
  sin delta, cos delta, 0;
  0, 0, 1
) vec(x, y, z)
$
В однородных координатах:
$
vec(chi', gamma', zeta', alpha') = mat(
  cos delta, - sin delta, 0, 0;
  sin delta, cos delta, 0, 0;
  0, 0, 1, 0;
  0, 0, 0, 1
) vec(chi, gamma, zeta, alpha)
$
]

#consequence[
  Для поворотов относительно $x$ и $y$ функция опеределяется по аналогии:
$
"Rotate"_x = mat(
  1, 0, 0, 0;
  0, cos delta, -sin delta, 0, 0;
  0, sin delta, cos delta, 0;
  0, 0, 0, 1
)
$
$
"Rotate"_y = mat(
  cos delta, 0, -sin delta, 0;
  0, 1, 0, 0;
  sin delta, 0, cos delta, 0;
  0, 0, 0, 1
)
$
][]
Обратным преобразованием поворота будет такой же поворот на $-delta$.
