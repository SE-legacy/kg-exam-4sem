#import "conf.typ": details, generateAll
#import "@preview/oxifmt:1.0.0": strfmt
#set heading(numbering: "1.1")
#generateAll()
#set page(numbering: "1")

#heading(numbering: none)[Предисловие]

Методичка предполагает, что у заинтересованного студента есть понимание материала курса как минимум на уровне идеи, и излагает материал в крайне сжатом виде, что может быть полезно для повторения или заучивания пройденного материала, но не для ознакомления с дисциплиной.



#let i = 1
#{
  let numbering = ""
  if details.sections.numbering {
    if details.sections.prefix.len() > 0 {
      numbering += details.sections.prefix + " "
    }
    numbering += "1.1. "
  }
  for section in details.sections.sections {
    heading(eval(section, mode: "markup"), numbering: numbering, hanging-indent: 0pt)
    include strfmt("sections/{:02}.typ", i)
    pagebreak(weak: true)
    i += 1
  }
}
