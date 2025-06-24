Скалярное произведение:
$
  overline(p) overline(q) = |overline(p)| |overline(q)| cos accent(overline(p) overline(q), hat)
$
Псевдоскалярное произведение:
$
  overline(p) dot overline(q) = |overline(p)| |overline(q)| sin accent(overline(p) overline(q), hat)
$
Векторное произведение:
$
  overline(p) times overline(q) = mat(delim: "|",
    overline(e_1), overline(e_2), overline(e_3);
    overline(p_1), overline(p_2), overline(p_3);
    overline(q_1), overline(q_2), overline(q_3)
  ) = (overline(p_2) overline(q_3) - overline(p_3) overline(q_2)) overline(e_1) + (overline(p_3) overline(q_1) - overline(p_1) overline(q_3)) overline(e_2) + (overline(p_1) overline(q_2) - overline(p_2) overline(q_1)) overline(e_3)
$
В матричном виде:
$
overline(p) times overline(q) = vec(
  p_2 q_3 - p_3 q_2,
  p_3 q_1 - p_1 q_3,
  p_1 q_2 - p_2 q_1
)
$
Выведем матрицу векторного произведения:
$
overline(p) times overline(q) = M overline(q) = mat(
  0, -p_3, p_2;
  p_3, 0, -p_1;
  -p_2, p_1, 0
) vec(q_1, q_2, q_3)
$
