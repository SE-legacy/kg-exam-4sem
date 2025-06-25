#import "@preview/oxifmt:1.0.0": strfmt
#grid(
  columns: (1fr, 1fr),
  image("../imgs/018.png"),
  image("../imgs/019.png"),
)
#{
  let i = 20
  while i <= 22 {
    image(width: if i < 20 { 40% } else { 50% }, strfmt("../imgs/{:03}.png", i))
    i += 1
  }
}
