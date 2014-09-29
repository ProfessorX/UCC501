(TeX-add-style-hook "Homework1"
 (lambda ()
    (LaTeX-add-environments
     "Law")
    (LaTeX-add-labels
     "sec:question-1"
     "sec:question-2"
     "eq:1"
     "eq:2"
     "eq:3"
     "sec:question-3"
     "eq:4"
     "sec:question-4"
     "sec:question-5")
    (TeX-run-style-hooks
     "hyperref"
     "url"
     "graphicx"
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

