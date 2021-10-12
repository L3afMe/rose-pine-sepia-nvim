;; Options
; bright-parens - Make Rainbow parens brighter
; show-eob      - Show ~ at the end of buffer
; bg-only       - Highlight background colors instead of foreground

{:setup
 (fn [opts]
   (let [shared (require :rose-pine-sepia.shared)]
     (shared.hi opts)
     (let [mode (if opts.bg-only :bg :fg)
           hi   (require (.. :rose-pine-sepia. mode))]
       (hi.hi opts))))}

