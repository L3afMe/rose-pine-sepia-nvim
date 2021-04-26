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
    match = { guibg = rps.overlay, gui = "bold" },
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
    rps.hi("PreProc", c.paren)

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

    rps.hi("Keyword", c.normal)
    rps.hi("Structure", c.normal)


    -- TypeScript
    rps.hi("typescriptImport", c.import)
    rps.hi("typescriptBraces", c.paren)
    rps.hi("typescriptParens", c.paren)
    rps.hi("typescriptBlock", c.normal)
    rps.hi("typescriptRegexpString", c.strSpecial)
    rps.hi("typescriptStringProperty", c.primStr)
    rps.hi("typescriptString", c.primStr)
    rps.hi("typescriptBoolean", c.primBoolean)
    rps.hi("typescriptNumber", c.primNumber)
    rps.hi("typescriptBOM", c.normal)
    rps.hi("typescriptOperator", c.operator)
    rps.hi("typescriptStatementKeyword", c.builtin)
    rps.hi("typescriptVariable", c.builtin)
    rps.hi("typescriptVariableDeclaration", c.var)
    rps.hi("typescriptAssign", c.operator)
    rps.hi("typescriptTernary", c.operator)
    rps.hi("typescriptTypeAnnotation", c.paren)
    rps.hi("typescriptTypeBracket", c.paren)
    rps.hi("typescriptTypeReference", c.clasifier)
    rps.hi("typescriptTypeArguments", c.const)
    rps.hi("typescriptTypeParameter", c.const)
    rps.hi("typescriptInterfaceKeyword", c.builtin)
    rps.hi("typescriptInterfaceName", c.clasifier)
    rps.hi("typescriptPredefinedType", c.normal)
    rps.hi("typescriptExport", c.builtin)
    rps.hi("typescriptModule", c.builtin)
    rps.hi("typescriptAsyncFuncKeyword", c.builtin)
    rps.hi("typescriptAliasKeyword", c.builtin)
    rps.hi("typescriptAliasDeclaration", c.clasifier)
    rps.hi("typescriptFuncKeyword", c.builtin)
    rps.hi("typescriptFuncName", c.func)
    rps.hi("typescriptFuncComma", c.paren)
    rps.hi("typescriptFuncCallArg", c.var)
    rps.hi("typescriptCall", c.var)
    rps.hi("typescriptProp", c.normal)
    rps.hi("typescriptMethod", c.normal)
    rps.hi("typescriptDotNotation", c.operator)
    rps.hi("typescriptGlobalJSONDot", c.normal)
    rps.hi("typescriptGlobalArrayDot", c.operator)
    rps.hi("typescriptGlobalPromiseDot", c.operator)
    rps.hi("typescriptGlobalObjectDot", c.operator)
    rps.hi("typescriptGlobal", c.normal)
    rps.hi("typescriptCase", c.func)
    rps.hi("typescriptDefault", c.func)
    rps.hi("typescriptRepeat", c.builtin)
    rps.hi("typescriptForOperator", c.builtin)
    rps.hi("typescriptLoopParen", c.var)
    rps.hi("typescriptConditional", c.builtin)
    rps.hi("typescriptConditionalParen", c.var)
    rps.hi("typescriptTemplate", c.primStr)
    rps.hi("typescriptTemplateSB", c.strSpecial)
    rps.hi("typescriptTemplateSubstitution", c.var)
    rps.hi("typescriptNodeGlobal", c.clasifier)
    rps.hi("typescriptUnaryOp", c.operator)
    rps.hi("typescriptBinaryOp", c.operator)
    rps.hi("typescriptNull", c.primGeneric)
    rps.hi("typescriptArray", c.operator)
    rps.hi("typescriptObjectType", c.clasifier)
    rps.hi("typescriptObjectLiteral", c.normal)
    rps.hi("typescriptObjectLabel", c.var)
    rps.hi("typescriptObjectColon", c.operator)
    rps.hi("typescriptEndColons", c.operator)
    rps.hi("typescriptArrowFunc", c.operator)
    rps.hi("typescriptArrowFuncDef", c.normal)
    rps.hi("typescriptArrowFuncArg", c.var)
    rps.hi("typescriptUnion", c.operator)
    rps.hi("typescriptLineComment", c.comment)
    rps.hi("typescriptComment", c.comment)
    rps.hi("typescriptCommentTodo", c.commentTODO)
    rps.hi("typescriptParenExp", c.normal)
    rps.hi("typescriptCastKeyword", c.builtin)
    rps.hi("typescriptGlobalMethod", c.normal)
    rps.hi("typescriptMember", c.var)
    rps.hi("typescriptComputedMember", c.normal)
    rps.hi("typescriptMemberOptionality", c.operator)
    rps.hi("typescriptIndexExpr", c.normal)
    rps.hi("typescriptParamImpl", c.normal)
    rps.hi("typescriptOptionalMark", c.operator)
    rps.hi("typescriptReturnAnnotation", c.operator)


    -- JavaScript
    rps.hi("javascriptParens", c.paren)
    rps.hi("javascriptBraces", c.paren)
    rps.hi("javascriptException", c.normal)
    rps.hi("javascriptStatement", c.builtin)
    rps.hi("javascriptReserved", c.builtin)
    rps.hi("javascriptFunction", c.builtin)
    rps.hi("javascriptIdentifier", c.builtin)
    rps.hi("javascriptConditional", c.builtin)
    rps.hi("javascriptOperator", c.operator)
    rps.hi("javascriptStringS", c.primStr)
    rps.hi("javascriptStringD", c.primStr)
    rps.hi("javascriptStringT", c.primStr)
    rps.hi("javascriptBoolean", c.primBoolean)


    -- Shell
    rps.hi("shComment", c.comment)
    rps.hi("shSet", c.func)
    rps.hi("shSetOption", c.normal)
    rps.hi("shSetList", c.normal)
    rps.hi("shVariable", c.var)
    rps.hi("shVarAssign", c.operator)
    rps.hi("shNumber", c.primNumber)
    rps.hi("shQuote", c.primStr)
    rps.hi("shDoubleQuote", c.primStr)
    rps.hi("shSpecial", c.strSpecial)
    rps.hi("shLoop", c.builtin)
    rps.hi("shRepeat", c.builtin)
    rps.hi("shIf", c.normal)
    rps.hi("shFor", c.normal)
    rps.hi("shCase", c.builtin)
    rps.hi("shCaseEsac", c.builtin)
    rps.hi("shCaseIn", c.builtin)
    rps.hi("shCaseLabel", c.builtin)
    rps.hi("shSnglCase", c.paren)
    rps.hi("shConditional", c.builtin)
    rps.hi("shStatement", c.func)
    rps.hi("bashStatement", c.func)
    rps.hi("shEcho", c.var)
    rps.hi("shDerefVar", c.var)
    rps.hi("shDerefSimple", c.var)
    rps.hi("shRange", c.paren)
    rps.hi("shExpr", c.normal)
    rps.hi("shTestOpr", c.builtin)
    rps.hi("shTestPattern", c.primGeneric)
    rps.hi("shOperator", c.operator)
    rps.hi("shCommandSub", c.normal)
    rps.hi("shCmdSubRegion", c.paren)
    rps.hi("shOption", c.operator)

    
    -- Python
    rps.hi("pythonRawString", c.comment)
    rps.hi("pythonString", c.primStr)
    rps.hi("pythonQuotes", c.primStr)
    rps.hi("pythonTripleQuotes", c.primStr)
    rps.hi("pythonStatement", c.builtin)
    rps.hi("pythonFunction", c.func)
    rps.hi("pythonBuiltin", c.builtin)
    rps.hi("pythonComment", c.comment)
    rps.hi("pythonTodo", c.commentTODO)
    rps.hi("pythonInclude", c.import)
    rps.hi("pythonNumber", c.primNumber)
    rps.hi("pythonRepeat", c.builtin)
    rps.hi("pythonOperator", c.builtin)
    rps.hi("pythonConditional", c.builtin)


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
