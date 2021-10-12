(fn hi-general [opts hi colors]
  (hi ;; General
      ; Normal text
      :Normal     {:fg colors.fg
                   :bg colors.bg}
      :NormalFG   {:fg colors.fg}
      :Identifier {:fg colors.ppl}
      :Special    {:fg colors.cyn}
      :Statement  {:fg colors.ppl}
      :Comment    {:fg colors.extras.dimmed}
      :Constant   {:fg colors.red}
      :String     {:fg colors.ylw}
      :PreProc    {:fg colors.cyn}
      :Variable   {:fg colors.ppl}
      :Title      {:fg colors.ppl}
      :Error      {:fg colors.red}))

{:hi (fn [opts]
      (let [colors (require :rose-pine-sepia.colors)
            util   (require :rose-pine-sepia.util)
            hi     util.hi]
       (hi-general opts hi colors)))}

