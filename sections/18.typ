#import "../conf.typ": lets
Преобразование масштабирования неприменимо для нормали:
#grid(columns: 2,
  image("../imgs/012.png"),
  image("../imgs/013.png")
)

Предположим, использовалась матрица преобразований $M$:
$
cases(
  A' = M dot A,
  B' = M dot B
)
$

Отсюда следует уравнение:
$
B' - A' = M (B - A)
$

Важно понимать, что по определению скалярного произведения и нормали для однородных координат, усечённых до 2, справедливо:
$
overline(n) (B - A) = 0
$
Отсюда  следует:
$
cases(
  overline(n') (B' - A')_2 = 0,
  overline(n') M (B - A)_2 = 0
) <=> cases(
  overline(n')^T (B' - A') = 0,
  overline(n')^T M (B - A) = 0
)
$
$overline(n')^T M = overline(n)^T \
overline(n')^T = overline(n)^T M^(-1) \
overline(n') = (overline(n)^T M^(-1))^T \
overline(n') = [(M^(-1))^T]_(2 times 2) overline(n)$

_Для 3D аналогично_


