#import "../conf.typ": lets, definition, theorem
#definition[
При преобразовании масштобирования расположение каждой точки изображения относительно начала координат увеличивается в заданное количество раз, то есть:
$
cases(
  x^' = x dot S_x,
  y^' = y dot S_y
)
$

Представим в матричном виде:
$
vec(x^', y^') = mat(
S_x, 0;
0, S_y
) vec(x, y)
$
]

#theorem[
Поворот на угол $theta$, согласно геометрии, имеет вид:
$
cases(
x^' = x cos theta - y sin theta,
y^' = y cos theta + x sin theta
)
$
В матричном виде:
$
vec(x^', y^') = mat(
  cos theta, - sin theta;
  sin theta, cos theta
) vec(x, y)
$
][
#lets $P$ --- точка до поворота, $P'$ --- точка после поворота.

Будем иметь ввиду, что поворот вокруг начала координат не влияет на расстояние от него, поэтому $|O P| = |O P'|$.

Также будем считать, что изначальный угол поворота равен $alpha$. Тогда координаты точки $P$ можно представить в следующем виде:

$
cases(
  x = |O P| cos alpha,
  y = |O P| sin alpha
)
$

Тогда координатами $P^'$ будут:
$
cases(
  x^' = |O P^'| cos (alpha + theta),
  y^' = |O P^'| sin (alpha + theta)
) space cases(
  x^' = |O P| (cos alpha cos theta - sin alpha sin theta),
  y^' = |O P| (sin alpha cos theta + cos alpha sin theta)
) \ cases(
  x^' = (|O P| cos alpha) cos theta - (|O P| sin alpha) sin theta,
  y^' = (|O P| sin alpha) cos theta + (|O P| cos alpha) sin theta
) space cases(
  x^' = x cos theta - y sin theta,
  y^' = y cos theta + x sin theta
)
$
]

