#import "@preview/oxifmt:1.0.0": strfmt
#{
  let i = 14
  while i <= 17 {
    image(width: 50%, strfmt("../imgs/{:03}.png", i))
    i += 1
  }
}
