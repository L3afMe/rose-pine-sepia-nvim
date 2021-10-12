(fn lang-fixes []
   (let [util (require :rose-pine-sepia.util)]
     (util.hi
       :FennelString  {:link :String}
       :FennelSymbol  {:link :NormalFG}
       :FennelKeyword {:link :NormalFG}

       :clojureVariable {:link :Variable}

       :makeIdent    {:link :Special}
       :makeCommands {:link :NormalFG}
       :makeTarget   {:link :PreProc})))

(fn hi-ui [opts hi colors]
   (hi ; Character under the cursor
       :Cursor {:fg colors.bg}
       ; Cursor line - requires 'cursorline' to be set
       :CursorLine {:bg colors.ovr}
       ; Cursor column - requires 'cursorcolumn' to be set
       :CursorColumn {:bg colors.ovr}
       ; Visual selection
       :Visual {:bg colors.ovr}
       ; Search selection
       :Search {:bg colors.ovr}
       ; Sign column
       :SignColumn {:fg colors.extras.dimmed}
       ; Line numbers
       :LineNr {:fg colors.extras.dimmed}
       ; Cursor line numbers
       :CursorLineNr {:fg colors.extras.dimmed}
       ; Divider between vsplits
       :VertSplit {:fg colors.ovr :bg colors.ovr}
       ; The ~'s at the end of buffer
       :EndOfBuffer {:fg (if opts.show-eob 
                           colors.ovr
                           colors.bg)}
       ; Float window inner colors
       :NormalFloat {:fg colors.fg
                     :bg colors.bg}
       ; Float window border colors
       :FloatBorder {:fg colors.fg
                     :bg colors.bg}
       ; Fold line
       :Folded {:fg colors.extras.dimmed
                :bg colors.ovr}
       ; Fold number column
       :FoldColumn {:link :LineNr}
       ; Matching parenthesis
       :MatchParen {:fg colors.fg
                    :bg colors.ovr
                    :style :BOLD}
       ; Status line for active window
       :StatusLine {:fg colors.ovr
                    :bg colors.fg}
       ; Statusline for non active windows
       :StatusLineNC {:fg colors.bg
                      :bg colors.extras.dimmed}
       ; LSP symbols and virtual text
       :LspDiagnosticsDefaultError       {:fg colors.red}
       :LspDiagnosticsDefaultHint        {:fg colors.extras.dimmed}
       :LspDiagnosticsDefaultInformation {:fg colors.blu}
       :LspDiagnosticsDefaultWarning     {:fg colors.ylw}
       ; Error messages
       :ErrorMsg   {:fg colors.red}
       ; Directories
       :Directory  {:fg colors.ppl}
       ; Diffs
       :DiffAdd    {:fg colors.fg :bg colors.lgrn}
       :DiffDelete {:fg colors.fg :bg colors.lred}
       :DiffText   {:fg colors.fg :bg colors.lblu}
       :DiffChange {:fg colors.fg :bg colors.lblu}))

(fn hi-plugins [opts hi colors]
  (tset ;; Rainbow parens (luochen1990/rainbow)
        vim.g :rainbow_conf
        {:guifgs 
         (if opts.bright-parens
           [colors.red colors.grn colors.ylw 
            colors.blu colors.ppl colors.cyn]
           [colors.blu colors.ppl colors.cyn 
            colors.blu colors.ppl colors.cyn])})

  (hi ;; Gitsigns (lewis6991/gitsigns.nvim)
      :GitSignsAdd        {:bg colors.lgrn}
      :GitSignsChange     {:bg colors.lcyn}
      :GitSignsDelete     {:bg colors.lred})

  (hi ;; VGit (tanvirtin/vgit.nvim)
      :VGitViewWordAdd    {:bg colors.ppl}
      :VGitViewWordRemove {:bg colors.ppl}
      :VGitSignAdd        {:fg colors.grn}
      :VGitSignChange     {:fg colors.blu}
      :VGitSignRemove     {:fg colors.red}
      :VGitIndicator      {:fg colors.ppl}
      :VGitStatus         {:fg :#FF00FF :bg :#FFFF00} ; Not sure what this is for, if you figure it out please let me know
      :VGitBorder         {:fg colors.ppl})

  (hi ;; barbar.nvim (romgrk/barbar.nvim) 
      ; Current buffer.
      :BufferCurrent       {:fg colors.fg :bg colors.ovr}
      :BufferCurrentIndex  {:link :BufferCurrent}
      :BufferCurrentMod    {:link :BufferCurrent}
      :BufferCurrentTarget {:link :BufferCurrent}
      :BufferCurrentSign   {:bg colors.ovr}

      ; Buffers visible but not active.
      :BufferVisible       {:fg colors.extras.dimmed :bg colors.bg}
      :BufferVisibleIndex  {:link :BufferVisible}
      :BufferVisibleMod    {:link :BufferVisible}
      :BufferVisibleTarget {:link :BufferVisible}
      :BufferVisibleSign   {:fg colors.fg :bg colors.bg}

      ; Buffers not visible.
      :BufferInactive       {:link :BufferVisible}
      :BufferInactiveIndex  {:link :BufferInactive}
      :BufferInactiveMod    {:link :BufferInactive}
      :BufferInactiveTarget {:link :BufferInactive}
      :BufferInactiveSign   {:link :BufferVisibleSign}

      ; Filler after last tab.      
      :BufferTabpageFill {:fg colors.gg :bg colors.bg})

  (hi ;; WhichKey (folke/which-key.nvim)
      ; The actual bind key
      :WhichKey {:fg colors.ppl}
      ; The arrow between the key and the description
      :WhichKeySeperator {:fg colors.extras.dimmed}
      ; The bind description
      :WhichKeyGroup {:fg colors.grn}
      ; The group name
      :WhichKeyDesc {:fg colors.cyn}))

{:hi-ui       hi-ui
 :hi-plugins  hi-plugins
 :lang-fixes  lang-fixes

 :hi 
 (fn [opts]
  (let [colors (require :rose-pine-sepia.colors)
        util   (require :rose-pine-sepia.util)
        hi     util.hi]
    (hi-ui      opts hi colors)
    (hi-plugins opts hi colors)
    (lang-fixes)))}
