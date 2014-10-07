(TeX-add-style-hook "_region_"
 (lambda ()
    (LaTeX-add-environments
     "Law")
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

