
(fn hi-general [opts hi colors]
  (hi 
    :Normal {:fg colors.fg :bg colors.bg}
    :NormalFG   {:fg colors.fg}
    :Identifier {:bg colors.xlppl}
    :Special    {}
    :Statement  {}
    :Comment    {:fg colors.extras.dimmed}
    :Constant   {}
    :String     {:bg colors.xlylw}
    :PreProc    {:bg colors.xlcyn}
    :Variable   {:bg colors.xlppl}
    :Title      {}
    :Error      {:bg colors.xlred}))

(fn fix-langs [hi colors]
  (hi
    :makeIdent {:bg colors.xlred}))

{:hi (fn [opts]
      (let [colors (require :rose-pine-sepia.colors)
            util   (require :rose-pine-sepia.util)]
        (hi-general opts util.hi colors)
        (fix-langs       util.hi colors)))}

