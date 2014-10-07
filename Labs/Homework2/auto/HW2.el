(TeX-add-style-hook "HW2"
 (lambda ()
    (LaTeX-add-environments
     "Law")
    (LaTeX-add-labels
     "sec:question-1"
     "sec:energy-scales"
     "eq:1"
     "eq:2"
     "eq:3"
     "eq:4"
     "sec:co2-emissions"
     "eq:5"
     "eq:6"
     "eq:7"
     "sec:renewables-1")
    (TeX-run-style-hooks
     "hyperref"
     "url"
     "graphicx"
     "listings"
     "array"
     "ntheorem"
     "algorithmic"
     "cite"
     "gensymb"
     "amssymb"
     "amsmath"
     ""
     "latex2e"
     "art12"
     "article"
     "12pt")))

