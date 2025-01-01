;; extends

; Add `defimp` to function definition keywords
(call
  target: ((identifier) @keyword.function
    (#eq? @keyword.function "defi")))

