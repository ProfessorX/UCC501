(TeX-add-style-hook
 "HW3"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12"
    "amsmath"
    "amssymb"
    "gensymb"
    "cite"
    "algorithmic"
    "ntheorem"
    "array"
    "xcolor"
    "listings"
    "graphicx"
    "url"
    "hyperref")
   (LaTeX-add-labels
    "sec:why-hydropower-works"
    "sec:return-period"
    "eq:1"
    "eq:2"
    "eq:3"
    "sec:within-20-years"
    "eq:4"
    "eq:5"
    "sec:does-it-rain"
    "fig:rain-ams"
    "eq:6"
    "sec:it-there.-air"
    "sec:good-bad"
    "sec:how-powerful-could"
    "eq:7"
    "eq:8"
    "eq:9"
    "eq:10"
    "sec:how-did-red"
    "sec:all-solar-leads")
   (LaTeX-add-environments
    "Law")))

