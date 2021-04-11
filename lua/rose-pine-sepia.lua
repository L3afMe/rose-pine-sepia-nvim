local rps = {
    text    = '#575279',
    subtle  = '#6e6a86',
    ignored = '#9893a5',
    base    = '#F5E9DA',
    surface = '#FAF4ED',
    overlay = '#EDD7BD',
    love    = '#B4637A',
    sun     = '#EA9D34',
    rose    = '#D7827E',
    pine    = '#286983',
    foam    = '#56949F',
    iris    = '#907AA9',
    none    = 'NONE'
}

function rps.setup_term()
    -- vim.g.terminal_color_0 = rps.base.cli
    -- vim.g.terminal_color_1 = rps.highlightl.cli
    -- vim.g.terminal_color_2 = rps.highlightd.cli
    -- vim.g.terminal_color_3 = rps.textDark.cli
    -- vim.g.terminal_color_4 = rps.textLight.cli
    -- vim.g.terminal_color_5 = rps.iris.cli
    -- vim.g.terminal_color_6 = rps.subtle.cli
    -- vim.g.terminal_color_7 = rps.faded.cli
    -- vim.g.terminal_color_8 = rps.foam.cli
    -- vim.g.terminal_color_9 = rps.sun.cli
    -- vim.g.terminal_color_10 = rps.rose.cli
    -- vim.g.terminal_color_11 = rps.love.cli
end

function rps.hi(group, style)
    vim.api.nvim_command('highlight ' .. group .. 
        ' ' .. (style.gui and 'gui=' .. style.gui or '') .. 
        ' guifg=' .. (style.guifg and style.guifg or 'NONE') .. 
        ' guibg=' .. (style.guibg and style.guibg or 'NONE') .. 
        ' ' .. (style.guisp and ' guisp=' .. style.guisp or ''))
end

local c = {
    normal = { guifg = rps.text },

    func = { guifg = rps.iris },
    funcBuiltin = { guifg = rps.foam },
    builtin = { guifg = rps.foam },

    var = { guifg = rps.subtle },
    const = { guifg = rps.iris },
    
    import = { guifg = rps.iris },
    importSpecifier = { guifg = rps.iris },

    clasifier = { guifg = rps.iris },

    comment = { guifg = rps.ignored },
    commentTODO = { guifg = rps.text, guibg = rps.sun },

    paren = { guifg = rps.ignored },

    operator = { guifg = rps.iris },
    decorator = { guifg = rps.sun },

    primStr = { guifg = rps.sun },
    strSpecial = { guifg = rps.rose },
    primGeneric = { guifg = rps.rose },
    primBoolean = { guifg = rps.rose },
    primNumber = { guifg = rps.rose },

    error = { guifg = rps.love, gui = "bold" },
    warning = { guifg = rps.sun },
    info = { guifg = rps.foam },

    highlight = { guibg = rps.overlay },
    match = { guifg = rps.text, guibg = rps.overlay, gui = "bold" },
}

function rps.setup_groups()
    -- (N)Vim
    vim.api.nvim_command("set guicursor=n-v-c:block-Cursor,i:ver100-iCursor,n-v-c:blinkon110,i:blinkwait10")
    rps.hi("Cursor", { guifg = rps.overlay, guibg = rps.iris })
    rps.hi("lCursor", { guifg = rps.overlay, guibg = rps.iris })
    rps.hi("iCursor", { guifg = rps.overlay, guibg = rps.iris })
    rps.hi("CursorLine", { guibg = rps.overlay })
    rps.hi("Folded", { guibg = rps.overlay, guifg = rps.iris })
    rps.hi("FoldColumn", { guibg = rps.overlay, guifg = rps.iris })
    rps.hi("Visual", c.highlight)
    rps.hi("Search", c.highlight)
    rps.hi("IncSearch", c.highlight)
    rps.hi("LineNr", { guifg = rps.ignored })
    rps.hi("NonText", { guifg = rps.ignored })
    rps.hi("CursorLineNr", { guifg = rps.ignored })
    rps.hi("DiffAdd", { guifg = rps.ignored })
    rps.hi("DiffChange", { guifg = rps.ignored })
    rps.hi("DiffDelete", c.warning)
    rps.hi("DiffText", { guifg = rps.ignored })
    rps.hi("SignColumn", { guifg = rps.none })
    rps.hi("VertSplit", { guifg = rps.base, guibg = rps.base })
    rps.hi("EndOfBuffer", { guifg = rps.base, guibg = rps.base })
    rps.hi("StatusLine", { guifg = rps.iris, guibg = rps.overlay, gui = "NONE" })
    rps.hi("StatusLineNC", { guifg = rps.iris, guibg = rps.overlay, gui = "NONE" })
    rps.hi("MatchParen", c.match)
    rps.hi("MatchParenCur", c.match)
    rps.hi("MatchWord", c.match)
    rps.hi("Question", c.info)
    rps.hi("Error", c.error)
    rps.hi("ErrorMsg", c.error)
    rps.hi("WarningMsg", c.warning)
    rps.hi("Directory", { guifg = rps.iris })
    rps.hi("Pmenu", { guifg = rps.iris, guibg = rps.overlay })
    rps.hi("PmenuSel", { guifg = rps.iris, guibg = rps.overlay, gui = "bold" })
    rps.hi("PmenuSbar", { guibg = rps.overlay })
    rps.hi("PmenuThumb", { guibg = rps.iris })

    rps.hi("Normal", { guifg = rps.text, guibg = rps.base })
    rps.hi("Type", c.builtin)
    rps.hi("Comment", c.comment)
    rps.hi("Todo", c.commentTODO)
    rps.hi("Constant", c.const)
    rps.hi("Error", c.error)

    rps.hi("String", c.primStr)
    rps.hi("Character", c.primStr)
    rps.hi("Number", c.primNumber)
    rps.hi("Boolean", c.primBoolean)
    rps.hi("Float", c.primNumber)
    rps.hi("String", c.primStr)


    -- XML
    rps.hi("xmlTag", c.paren)
    rps.hi("xmlTagName", c.import)
    rps.hi("xmlAttrib", c.var)
    rps.hi("xmlDocType", c.builtin)
    rps.hi("xmlDocTypeKeyword", c.builtin)
    rps.hi("xmlDocTypeDecl", c.paren)

    
    -- Smali
    rps.hi("dalvikDirective", c.funcBuiltin)
    rps.hi("dalvikInstruction", c.funcBuiltin)
    rps.hi("dalvikAccess", c.funcBuiltin)
    rps.hi("dalvikName", c.import)
    rps.hi("dalvikRegister", c.var)
    rps.hi("dalvikString", c.primStr)
    rps.hi("dalvikNumber", c.primNumber)


    -- YAML
    rps.hi("yamlBlockMappingKey", c.var)
    rps.hi("yamlKeyValueDelimiter", c.var)
    rps.hi("yamlPlainScalar", c.primGeneric)
    rps.hi("yamlTodo", c.commentTODO)
    rps.hi("yamlComment", c.comment)
    rps.hi("yamlFlowIndicator", c.paren)
    rps.hi("yamlFlowString", c.primStr)
    rps.hi("yamlFlowStringDelimiter", c.primStr)
    rps.hi("yamlBool", c.primBoolean)
    rps.hi("yamlString", c.primStr)
    rps.hi("yamlFlowString", c.primStr)
    rps.hi("yamlInteger", c.primNumber)
    rps.hi("yamlFloat", c.primNumber)
    rps.hi("yamlNull", c.primGeneric)
    rps.hi("yamlBlockCollectionItemStart", c.operator)


    -- JSON
    -- This really needs to be redone
    rps.hi("jsonBraces", c.paren)
    rps.hi("jsonKeyword", c.var)
    rps.hi("jsonKeywordMatch", c.var)
    rps.hi("jsonQuote", c.primStr)
    rps.hi("jsonString", c.primStr)
    rps.hi("jsonNumber", c.primNumber)
    rps.hi("jsonBoolean", c.primBoolean)
    rps.hi("jsonNoise", c.operator)
    


    -- VimL
    rps.hi("vimLineComment", c.comment)
    rps.hi("vimComment", c.comment)
    rps.hi("vimCommentTitle", c.comment)
    rps.hi("vimCommentTitleLeader", c.comment)
    rps.hi("vimLineComment", c.comment)
    rps.hi("vimTodo", c.commentTODO)
    rps.hi("vimCommand", c.builtin)
    rps.hi("vimMap", c.builtin)
    rps.hi("vimMapMod", c.paren)
    rps.hi("vimMapModKey", c.var)
    rps.hi("vimBracket", c.paren)
    rps.hi("vimNotation", c.var)
    rps.hi("vimMapLhs", c.var)
    rps.hi("vimMapRhs", c.var)
    rps.hi("vimMapRhsExtend", c.var)
    rps.hi("vimAugroupKey", c.builtin)
    rps.hi("vimAugroup", c.var)
    rps.hi("vimAutoCmd", c.builtin)
    rps.hi("vimUserCmd", c.func)
    rps.hi("vimUserCommand", c.func)
    rps.hi("vimUserAttrb", c.var)
    rps.hi("vimUserAttrbKey", c.var)
    rps.hi("vimAutoEvent", c.var)
    rps.hi("vimAutoEventList", c.operator)
    rps.hi("vimAutoCmdSpace", c.var)
    rps.hi("vimAutoCmdOpt", c.var)
    rps.hi("vimAutoCmdSfxList", c.var)
    rps.hi("vimFilter", c.var)
    rps.hi("vimSet", c.builtin)
    rps.hi("vimSetString", c.primStr)
    rps.hi("vimSetSep", c.operator)
    rps.hi("vimSetEqual", c.operator)
    rps.hi("vimOption", c.var)
    rps.hi("vimFunction", c.func)
    rps.hi("vimFuncName", c.func)
    rps.hi("vimFunc", c.func)
    rps.hi("vimCmdSep", c.operator)
    rps.hi("vimSep", c.paren)
    rps.hi("vimParenSep", c.paren)
    rps.hi("vimOperParen", c.var)
    rps.hi("vimOper", c.operator)
    rps.hi("vimVar", c.var)
    rps.hi("vimNotFunc", c.builtin)
    rps.hi("vimFuncVar", c.var)
    rps.hi("vimUserFunc", c.func)
    rps.hi("vimFBVar", c.var)
    rps.hi("vimFuncBody", c.normal)
    rps.hi("vimEcho", c.normal)
    rps.hi("vimIsCommand", c.var)
    rps.hi("vimLet", c.builtin)
    rps.hi("vimNumber", c.primNumber)
    rps.hi("vimString", c.primStr)
    rps.hi("vimStringCont", c.strSpecial)
    rps.hi("vimStringEnd", c.primStr)
    rps.hi("vimContinue", c.strSpecial)


    -- TOML
    rps.hi("tomlTable", c.var)
    rps.hi("tomlTableArray", c.var)
    rps.hi("tomlKey", c.var)
    rps.hi("tomlKeySq", c.var)
    rps.hi("tomlKeyDq", c.var)
    rps.hi("tomlKeyValueArray", c.var)
    rps.hi("tomlArray", c.var)
    rps.hi("tomlDate", c.primGeneric)
    rps.hi("tomlString", c.primStr)
    rps.hi("tomlEscape", c.strSpecial)
    rps.hi("tomlLineEscape", c.strSpecial)
    rps.hi("tomlBoolean", c.primBoolean)
    rps.hi("tomlInteger", c.primNumber)
    rps.hi("tomlFloat", c.primNumber)
    rps.hi("tomlComment", c.comment)
    rps.hi("tomlTodo", c.commentTODO)


    -- CSS
    rps.hi("cssComment", c.comment)
    rps.hi("cssAtKeyword", c.decorator)
    rps.hi("cssAtRule", c.decorator)
    rps.hi("cssFunction", c.funcBuiltin)
    rps.hi("cssFunctionName", c.funcBuiltin)
    rps.hi("cssStringQ", c.primStr)
    rps.hi("cssStringQQ", c.primStr)
    rps.hi("cssTagName", c.func)
    rps.hi("cssIdentifier", c.func)
    rps.hi("cssClassName", c.func)
    rps.hi("cssClassNameDot", c.func)
    rps.hi("cssBraces", c.paren)
    rps.hi("cssCustomProp", c.var)
    rps.hi("cssNoise", c.operator)
    rps.hi("cssAttrRegion", c.primGeneric)
    rps.hi("cssAttrComma", c.paren)
    rps.hi("cssSelectorOp", c.paren)
    rps.hi("cssSelectorOp2", c.operator)
    rps.hi("cssAttributeSelector", c.builtin)
    rps.hi("cssColor", c.primGeneric)
    rps.hi("cssUnitDecorators", c.primGeneric)
    rps.hi("cssImportant", c.decorator)
    rps.hi("cssPseudoClassId", c.decorator)
    rps.hi("cssVendor", c.decorator)
    rps.hi("cssPseudoClass", c.decorator)
    rps.hi("cssCommonAttr", c.primGeneric)
    rps.hi("cssBraceError", c.error)
    rps.hi("cssProp", c.var)
    rps.hi("cssAttr", c.primGeneric)
    rps.hi("cssValueLength", c.primNumber)
    rps.hi("cssValueNumber", c.primNumber)
    rps.hi("cssValueInteger", c.primNumber)
    rps.hi("cssValueAngle", c.primNumber)
    rps.hi("cssValueFrequency", c.primNumber)
    rps.hi("cssValueTime", c.primNumber)


    -- Lua
    rps.hi("luaSemiCol", c.paren)
    rps.hi("luaSymbolOperator", c.operator)
    rps.hi("luaOperator", c.operator)
    rps.hi("luaBraces", c.paren)
    rps.hi("luaParen", c.paren)
    rps.hi("luaParens", c.paren)
    rps.hi("luaComment", c.comment)
    rps.hi("luaCommentTodo", c.commentTODO)
    rps.hi("luaInnerComment", c.comment)
    rps.hi("luaTodo", c.commentTODO)
    rps.hi("luaString", c.primStr)
    rps.hi("luaString2", c.primStr)
    rps.hi("luaNumber", c.primNumber)
    rps.hi("luaConstant", c.primGeneric)
    rps.hi("luaTable", c.primGeneric)
    rps.hi("luaFuncCall", c.func)
    rps.hi("luaFuncName", c.func)
    rps.hi("luaFuncTable", c.func)
    rps.hi("luaFunc", c.func)
    rps.hi("luaFuncId", c.func)
    rps.hi("luaFunction", c.clasifier)
    rps.hi("luaFuncKeyword", c.builtin)
    rps.hi("luaFuncParens", c.paren)
    rps.hi("luaLocal", c.clasifier)
    rps.hi("luaLocal", c.clasifier)
    rps.hi("luaFor", c.builtin)
    rps.hi("luaIn", c.builtin)
    rps.hi("luaIfThen", c.builtin)
    rps.hi("luaElseifThen", c.builtin)
    rps.hi("luaThenEnd", c.builtin)
    rps.hi("luaRepeat", c.builtin)
    rps.hi("luaLoopBlock", c.builtin)
    rps.hi("luaElse", c.builtin)
    rps.hi("luaStatement", c.builtin)
    rps.hi("luaParenError", c.error)
    rps.hi("luaBraceError", c.error)
    rps.hi("luaError", c.error)


    -- Rust
    rps.hi("rustKeyword", c.builtin)
    rps.hi("rustObsoleteExternMod", c.builtin)
    rps.hi("rustExternCrate", c.builtin)
    rps.hi("rustTypedef", c.builtin)
    rps.hi("rustModPath", c.importSpecifier)
    rps.hi("rustModPathSep", c.import)
    rps.hi("rustIdentifier", c.import)
    rps.hi("rustFoldBraces", c.paren)
    rps.hi("rustEnum", c.const)
    rps.hi("rustEnumVariant", c.const)
    rps.hi("rustFuncName", c.func)
    rps.hi("rustFuncCall", c.func)
    rps.hi("rustMacro", c.func)
    rps.hi("rustAssert", c.func)
    rps.hi("rustPanic", c.func)
    rps.hi("rustConditional", c.builtin)
    rps.hi("rustRepeat", c.builtin)
    rps.hi("rustOperator", c.operator)
    rps.hi("rustLifetime", c.operator)
    rps.hi("rustStructure", c.builtin)
    rps.hi("rustArrowCharacter", c.operator)
    rps.hi("rustQuestionMark", c.operator)
    rps.hi("rustSigil", c.operator)
    rps.hi("rustCharacter", c.primStr)
    rps.hi("rustString", c.primStr)
    rps.hi("rustEscape", c.primStr)
    rps.hi("rustStringDelimiter", c.primStr)
    rps.hi("rustBoolean", c.primBoolean)
    rps.hi("rustDecNumber", c.primNumber)
    rps.hi("rustOctNumber", c.primNumber)
    rps.hi("rustHexNumber", c.primNumber)
    rps.hi("rustBinNumber", c.primNumber)
    rps.hi("rustNumber", c.primNumber)
    rps.hi("rustFloat", c.primNumber)
    rps.hi("rustStorage", c.builtin)
    rps.hi("rustTrait", c.const)
    rps.hi("rustAttribute", c.comment)
    rps.hi("rustDerive", c.comment)
    rps.hi("rustDeriveTrait", c.comment)
    rps.hi("rustLabel", c.comment)
    rps.hi("rustType", c.clasifier)
    rps.hi("rustCommentLine", c.comment)
    rps.hi("rustCommentLineDoc", c.comment)
    rps.hi("rustCommentBlock", c.comment)
    rps.hi("rustCommentBlockDoc", c.comment)
    rps.hi("rustTodo", c.commentTODO)
    rps.hi("rustSelf", c.const)
    rps.hi("rustSuper", c.const)


    -- CoC
    -- rps.hi("CocWarningLine", { guifg = rps.sun })
    rps.hi("CocRustTypeHint", c.info)
    rps.hi("CocErrorSign", c.error)
    rps.hi("CocWarningSign", c.warning)
    rps.hi("CocInfoSign", c.info)
    rps.hi("CocHintSign", c.info)
    rps.hi("CocHighlightText", c.match)
end

async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function()
    -- TODO: TreeSitter support
    async_load_plugin:close()
end)) 

function rps.start()
    -- -- Clear existing highlights
    -- vim.api.nvim_command('hi clear')

    -- -- Reset syntax
    -- if vim.fn.exists('syntax_on') then
    --     vim.api.nvim_command('syntax reset')
    -- end

    -- Set light background
    vim.o.background = 'light'
    
    -- Enable 'gui{fg, bg}' colors rather than cterm
    vim.o.termguicolors = true

    -- Set colorscheme name
    vim.g.colors_name = 'Rose Pine Sepia'

    -- Setup the groups
    rps.setup_groups()

    -- Load Tree Sitter syntax
    async_load_plugin:send()
end

rps.start()

return rps
