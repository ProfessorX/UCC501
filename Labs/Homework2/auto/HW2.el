(TeX-add-style-hook "HW2"
 (lambda ()
    (LaTeX-add-environments
     "Law")
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

