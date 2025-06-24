#import "../conf.typ": theorem
#theorem[
Преобразование переноса имеет вид:
$
"Translate"(T_x, T_y, T_z) = mat(
  1, 0, 0, T_x;
  0, 1, 0, T_y;
  0, 0, 1, T_z;
  0, 0, 0, 1
)
$
][
1. Выполним перенос:
$
cases(
  x' = x + T_x,
  y' = y + T_y,
  z' = z + T_z
)
$
2. Перейдём к безразмерным координатам:
$
cases(
  x'' = x' dot alpha,
  y'' = y' dot alpha,
  z'' = z' dot alpha,
  alpha'' = alpha
) <=> cases(
  x'' = x alpha + T_x alpha,
  y'' = y alpha + T_y alpha,
  z'' = z alpha + T_z alpha,
  alpha'' = alpha
) limits(<=>)^(chi = x alpha \ xi = y alpha \ zeta = z alpha) cases(
  x'' = chi + T_x alpha,
  y'' = xi + T_y alpha,
  z'' = zeta + T_z alpha
)
$
В матричном виде:
$
vec(x'', y'', z'', alpha'') = mat(
  1, 0, 0, T_x;
  0, 1, 0, T_y;
  0, 0, 1, T_z;
  0, 0, 0, 1
) vec(chi, xi, zeta, alpha)
$
]

Обратным преобразованием будет $"Translate"(-T_x, -T_y, -T_z)$.
