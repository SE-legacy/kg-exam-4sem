#import "@preview/oxifmt:1.0.0": strfmt
#{
  let i = 23
  while i <= 25 {
    image(width: 70%, strfmt("../imgs/{:03}.png", i))
    i += 1
  }
}
