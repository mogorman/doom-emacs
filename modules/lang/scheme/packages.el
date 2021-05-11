;; -*- no-byte-compile: t; -*-
;;; lang/scheme/packages.el

(when (package! geiser :pin "2b45bd368b4acbcef53c3c761725241fb6846102")
  (package! macrostep-geiser :pin "8600fca05fd12a2e0ffe63238ddbfcb37c285dac")
  (when (featurep! +chez)
    (package! geiser-chez :pin "03da1c17253856d8713bc5a25140cb5002c9c188"))
  (when (featurep! +chibi)
    (package! geiser-chibi :pin "6f59291d8d1dc92ffd3f53f919d8cab4bf50b7d3"))
  (when (featurep! +chicken)
    (package! geiser-chicken :pin "ceab39c89607f55cba88e5606ba5eb37c7df5260"))
  (when (featurep! +gambit)
    (package! geiser-gambit :pin "3294c944d1c3b79db44ed14b133129fec454bd60"))
  (when (featurep! +gauche)
    (package! geiser-gauche :pin "66e51430bded0f0e2037f474818a7bbaafb2906c"))
  (when (featurep! +guile)
    (package! geiser-guile :pin "700ac985c1c729ba1005a0a076c683e9f781526f")
    (when (featurep! :checkers syntax)
      (package! flycheck-guile
        :recipe (:host github :repo "flatwhatson/flycheck-guile")
        :pin "e46d6e5453dd7471309fae6549445c48e6d8f340")))
  (when (featurep! +kawa)
    (package! geiser-kawa :pin "b96c008e9c3b8dc210d8b536ee7b76b8690c8af6"))
  (when (featurep! +mit)
    (package! geiser-mit :pin "d17394f577aaa2854a74a1a0039cb8f73378b400"))
  (when (featurep! +racket)
    (package! geiser-racket :pin "22e56ce80389544d3872cf4beb4008fb514b2218")))
