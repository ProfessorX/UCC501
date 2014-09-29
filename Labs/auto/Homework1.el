(TeX-add-style-hook "Homework1"
 (lambda ()
    (LaTeX-add-labels
     "sec:question-1"
     "sec:question-2")
    (TeX-run-style-hooks
     "hyperref"
     "url"
     "graphicx"
     "array"
     "algorithmic"
     "cite"
     "amssymb"
     "amsmath"
     ""
     "latex2e"
     "art12"
     "article"
     "12pt")))

