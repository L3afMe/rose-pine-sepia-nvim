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
      :Function   {:fg colors.ppl}
      :String     {:fg colors.ylw}
      :PreProc    {:fg colors.cyn}
      :Variable   {:fg colors.ppl}
      :Title      {:fg colors.ppl}
      :Type       {:fg colors.cyn}
      :Error      {:fg colors.red}))

{:hi (fn [opts]
      (let [colors (require :rose-pine-sepia.colors)
            utils  (require :rose-pine-sepia.utils)
            hi     utils.hi]
       (hi-general opts hi colors)))}

