#import "../conf.typ": lets, definition, theorem

#theorem[
Преобразование переноса выполняется по формуле:
$
cases(
chi' = x + T_x alpha,
gamma' = y + T_y alpha,
alpha' = alpha
)
$
В матричном виде:
$
vec(chi', gamma', alpha') = mat(
  1, 0, T_x;
  0, 1, T_y;
  0, 0, 1
) vec(chi, gamma, alpha), " где" chi = alpha x, gamma = alpha y
$
][
Выполним перенос:
$
cases(
  x^' = x + T_x,
  y^' = y + T_y
)
$
Приведём $x^', y^'$ к безразмерным координатам:
$
cases(
  chi' = x' dot alpha,
  gamma' = y' dot alpha,
  alpha' = alpha
) space cases(
  chi' = (x + T_x) alpha,
  gamma' = (y + T_y) alpha,
  alpha' = alpha
) space cases(
  chi' = x alpha + T_x alpha,
  gamma' = y alpha + T_y alpha,
  alpha' = alpha
)
$
]
