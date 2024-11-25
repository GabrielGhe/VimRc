set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "quiet"

" Reference groups, generated via `quiet.lua`.
hi Normal                    guifg=#cccccc    guibg=none       gui=none
hi Normal2                   guifg=#aaaaaa    guibg=none       gui=none
hi Normal3                   guifg=#888888    guibg=none       gui=none
hi Normal4                   guifg=#666666    guibg=none       gui=none
hi Normal5                   guifg=#444444    guibg=none       gui=none
hi Normal6                   guifg=#222222    guibg=none       gui=none
hi NormalBold                guifg=#cccccc    guibg=none       gui=bold
hi Normal2Bold               guifg=#aaaaaa    guibg=none       gui=bold
hi Normal3Bold               guifg=#888888    guibg=none       gui=bold
hi Normal4Bold               guifg=#666666    guibg=none       gui=bold
hi Normal5Bold               guifg=#444444    guibg=none       gui=bold
hi Normal6Bold               guifg=#222222    guibg=none       gui=bold
hi NormalUnderline           guifg=#cccccc    guibg=none       gui=underline
hi Normal2Underline          guifg=#aaaaaa    guibg=none       gui=underline
hi Normal3Underline          guifg=#888888    guibg=none       gui=underline
hi Normal4Underline          guifg=#666666    guibg=none       gui=underline
hi Normal5Underline          guifg=#444444    guibg=none       gui=underline
hi Normal6Underline          guifg=#222222    guibg=none       gui=underline
hi NormalBg                  guifg=none       guibg=#cccccc    gui=none
hi Normal2Bg                 guifg=none       guibg=#aaaaaa    gui=none
hi Normal3Bg                 guifg=none       guibg=#888888    gui=none
hi Normal4Bg                 guifg=none       guibg=#666666    gui=none
hi Normal5Bg                 guifg=none       guibg=#444444    gui=none
hi Normal6Bg                 guifg=none       guibg=#222222    gui=none
hi NormalBgBold              guifg=none       guibg=#cccccc    gui=bold
hi Normal2BgBold             guifg=none       guibg=#aaaaaa    gui=bold
hi Normal3BgBold             guifg=none       guibg=#888888    gui=bold
hi Normal4BgBold             guifg=none       guibg=#666666    gui=bold
hi Normal5BgBold             guifg=none       guibg=#444444    gui=bold
hi Normal6BgBold             guifg=none       guibg=#222222    gui=bold
hi NormalBgUnderline         guifg=none       guibg=#cccccc    gui=underline
hi Normal2BgUnderline        guifg=none       guibg=#aaaaaa    gui=underline
hi Normal3BgUnderline        guifg=none       guibg=#888888    gui=underline
hi Normal4BgUnderline        guifg=none       guibg=#666666    gui=underline
hi Normal5BgUnderline        guifg=none       guibg=#444444    gui=underline
hi Normal6BgUnderline        guifg=none       guibg=#222222    gui=underline
hi Error                     guifg=#cc0000    guibg=none       gui=none
hi Error2                    guifg=#aa0000    guibg=none       gui=none
hi Error3                    guifg=#880000    guibg=none       gui=none
hi Error4                    guifg=#660000    guibg=none       gui=none
hi Error5                    guifg=#440000    guibg=none       gui=none
hi Error6                    guifg=#220000    guibg=none       gui=none
hi ErrorBold                 guifg=#cc0000    guibg=none       gui=bold
hi Error2Bold                guifg=#aa0000    guibg=none       gui=bold
hi Error3Bold                guifg=#880000    guibg=none       gui=bold
hi Error4Bold                guifg=#660000    guibg=none       gui=bold
hi Error5Bold                guifg=#440000    guibg=none       gui=bold
hi Error6Bold                guifg=#220000    guibg=none       gui=bold
hi ErrorUnderline            guifg=#cc0000    guibg=none       gui=underline
hi Error2Underline           guifg=#aa0000    guibg=none       gui=underline
hi Error3Underline           guifg=#880000    guibg=none       gui=underline
hi Error4Underline           guifg=#660000    guibg=none       gui=underline
hi Error5Underline           guifg=#440000    guibg=none       gui=underline
hi Error6Underline           guifg=#220000    guibg=none       gui=underline
hi ErrorBg                   guifg=none       guibg=#cc0000    gui=none
hi Error2Bg                  guifg=none       guibg=#aa0000    gui=none
hi Error3Bg                  guifg=none       guibg=#880000    gui=none
hi Error4Bg                  guifg=none       guibg=#660000    gui=none
hi Error5Bg                  guifg=none       guibg=#440000    gui=none
hi Error6Bg                  guifg=none       guibg=#220000    gui=none
hi ErrorBgBold               guifg=none       guibg=#cc0000    gui=bold
hi Error2BgBold              guifg=none       guibg=#aa0000    gui=bold
hi Error3BgBold              guifg=none       guibg=#880000    gui=bold
hi Error4BgBold              guifg=none       guibg=#660000    gui=bold
hi Error5BgBold              guifg=none       guibg=#440000    gui=bold
hi Error6BgBold              guifg=none       guibg=#220000    gui=bold
hi ErrorBgUnderline          guifg=none       guibg=#cc0000    gui=underline
hi Error2BgUnderline         guifg=none       guibg=#aa0000    gui=underline
hi Error3BgUnderline         guifg=none       guibg=#880000    gui=underline
hi Error4BgUnderline         guifg=none       guibg=#660000    gui=underline
hi Error5BgUnderline         guifg=none       guibg=#440000    gui=underline
hi Error6BgUnderline         guifg=none       guibg=#220000    gui=underline
hi Interest                  guifg=#bb8855    guibg=none       gui=none
hi Interest2                 guifg=#9c7247    guibg=none       gui=none
hi Interest3                 guifg=#7d5c39    guibg=none       gui=none
hi Interest4                 guifg=#5e462b    guibg=none       gui=none
hi Interest5                 guifg=#3f301d    guibg=none       gui=none
hi Interest6                 guifg=#201a0f    guibg=none       gui=none
hi InterestBold              guifg=#bb8855    guibg=none       gui=bold
hi Interest2Bold             guifg=#9c7247    guibg=none       gui=bold
hi Interest3Bold             guifg=#7d5c39    guibg=none       gui=bold
hi Interest4Bold             guifg=#5e462b    guibg=none       gui=bold
hi Interest5Bold             guifg=#3f301d    guibg=none       gui=bold
hi Interest6Bold             guifg=#201a0f    guibg=none       gui=bold
hi InterestUnderline         guifg=#bb8855    guibg=none       gui=underline
hi Interest2Underline        guifg=#9c7247    guibg=none       gui=underline
hi Interest3Underline        guifg=#7d5c39    guibg=none       gui=underline
hi Interest4Underline        guifg=#5e462b    guibg=none       gui=underline
hi Interest5Underline        guifg=#3f301d    guibg=none       gui=underline
hi Interest6Underline        guifg=#201a0f    guibg=none       gui=underline
hi InterestBg                guifg=none       guibg=#bb8855    gui=none
hi Interest2Bg               guifg=none       guibg=#9c7247    gui=none
hi Interest3Bg               guifg=none       guibg=#7d5c39    gui=none
hi Interest4Bg               guifg=none       guibg=#5e462b    gui=none
hi Interest5Bg               guifg=none       guibg=#3f301d    gui=none
hi Interest6Bg               guifg=none       guibg=#201a0f    gui=none
hi InterestBgBold            guifg=none       guibg=#bb8855    gui=bold
hi Interest2BgBold           guifg=none       guibg=#9c7247    gui=bold
hi Interest3BgBold           guifg=none       guibg=#7d5c39    gui=bold
hi Interest4BgBold           guifg=none       guibg=#5e462b    gui=bold
hi Interest5BgBold           guifg=none       guibg=#3f301d    gui=bold
hi Interest6BgBold           guifg=none       guibg=#201a0f    gui=bold
hi InterestBgUnderline       guifg=none       guibg=#bb8855    gui=underline
hi Interest2BgUnderline      guifg=none       guibg=#9c7247    gui=underline
hi Interest3BgUnderline      guifg=none       guibg=#7d5c39    gui=underline
hi Interest4BgUnderline      guifg=none       guibg=#5e462b    gui=underline
hi Interest5BgUnderline      guifg=none       guibg=#3f301d    gui=underline
hi Interest6BgUnderline      guifg=none       guibg=#201a0f    gui=underline
hi Warning                   guifg=#bb7c00    guibg=none       gui=none
hi Warning2                  guifg=#9c6800    guibg=none       gui=none
hi Warning3                  guifg=#7d5400    guibg=none       gui=none
hi Warning4                  guifg=#5e4000    guibg=none       gui=none
hi Warning5                  guifg=#3f2c00    guibg=none       gui=none
hi Warning6                  guifg=#201800    guibg=none       gui=none
hi WarningBold               guifg=#bb7c00    guibg=none       gui=bold
hi Warning2Bold              guifg=#9c6800    guibg=none       gui=bold
hi Warning3Bold              guifg=#7d5400    guibg=none       gui=bold
hi Warning4Bold              guifg=#5e4000    guibg=none       gui=bold
hi Warning5Bold              guifg=#3f2c00    guibg=none       gui=bold
hi Warning6Bold              guifg=#201800    guibg=none       gui=bold
hi WarningUnderline          guifg=#bb7c00    guibg=none       gui=underline
hi Warning2Underline         guifg=#9c6800    guibg=none       gui=underline
hi Warning3Underline         guifg=#7d5400    guibg=none       gui=underline
hi Warning4Underline         guifg=#5e4000    guibg=none       gui=underline
hi Warning5Underline         guifg=#3f2c00    guibg=none       gui=underline
hi Warning6Underline         guifg=#201800    guibg=none       gui=underline
hi WarningBg                 guifg=none       guibg=#bb7c00    gui=none
hi Warning2Bg                guifg=none       guibg=#9c6800    gui=none
hi Warning3Bg                guifg=none       guibg=#7d5400    gui=none
hi Warning4Bg                guifg=none       guibg=#5e4000    gui=none
hi Warning5Bg                guifg=none       guibg=#3f2c00    gui=none
hi Warning6Bg                guifg=none       guibg=#201800    gui=none
hi WarningBgBold             guifg=none       guibg=#bb7c00    gui=bold
hi Warning2BgBold            guifg=none       guibg=#9c6800    gui=bold
hi Warning3BgBold            guifg=none       guibg=#7d5400    gui=bold
hi Warning4BgBold            guifg=none       guibg=#5e4000    gui=bold
hi Warning5BgBold            guifg=none       guibg=#3f2c00    gui=bold
hi Warning6BgBold            guifg=none       guibg=#201800    gui=bold
hi WarningBgUnderline        guifg=none       guibg=#bb7c00    gui=underline
hi Warning2BgUnderline       guifg=none       guibg=#9c6800    gui=underline
hi Warning3BgUnderline       guifg=none       guibg=#7d5400    gui=underline
hi Warning4BgUnderline       guifg=none       guibg=#5e4000    gui=underline
hi Warning5BgUnderline       guifg=none       guibg=#3f2c00    gui=underline
hi Warning6BgUnderline       guifg=none       guibg=#201800    gui=underline
hi Info                      guifg=#5599cc    guibg=none       gui=none
hi Info2                     guifg=#4780aa    guibg=none       gui=none
hi Info3                     guifg=#396788    guibg=none       gui=none
hi Info4                     guifg=#2b4e66    guibg=none       gui=none
hi Info5                     guifg=#1d3544    guibg=none       gui=none
hi Info6                     guifg=#0f1c22    guibg=none       gui=none
hi InfoBold                  guifg=#5599cc    guibg=none       gui=bold
hi Info2Bold                 guifg=#4780aa    guibg=none       gui=bold
hi Info3Bold                 guifg=#396788    guibg=none       gui=bold
hi Info4Bold                 guifg=#2b4e66    guibg=none       gui=bold
hi Info5Bold                 guifg=#1d3544    guibg=none       gui=bold
hi Info6Bold                 guifg=#0f1c22    guibg=none       gui=bold
hi InfoUnderline             guifg=#5599cc    guibg=none       gui=underline
hi Info2Underline            guifg=#4780aa    guibg=none       gui=underline
hi Info3Underline            guifg=#396788    guibg=none       gui=underline
hi Info4Underline            guifg=#2b4e66    guibg=none       gui=underline
hi Info5Underline            guifg=#1d3544    guibg=none       gui=underline
hi Info6Underline            guifg=#0f1c22    guibg=none       gui=underline
hi InfoBg                    guifg=none       guibg=#5599cc    gui=none
hi Info2Bg                   guifg=none       guibg=#4780aa    gui=none
hi Info3Bg                   guifg=none       guibg=#396788    gui=none
hi Info4Bg                   guifg=none       guibg=#2b4e66    gui=none
hi Info5Bg                   guifg=none       guibg=#1d3544    gui=none
hi Info6Bg                   guifg=none       guibg=#0f1c22    gui=none
hi InfoBgBold                guifg=none       guibg=#5599cc    gui=bold
hi Info2BgBold               guifg=none       guibg=#4780aa    gui=bold
hi Info3BgBold               guifg=none       guibg=#396788    gui=bold
hi Info4Underline            guifg=#2b4e66    guibg=none       gui=underline
hi Info5Underline            guifg=#1d3544    guibg=none       gui=underline
hi Info6Underline            guifg=#0f1c22    guibg=none       gui=underline
hi InfoBg                    guifg=none       guibg=#5599cc    gui=none
hi Info2Bg                   guifg=none       guibg=#4780aa    gui=none
hi Info3Bg                   guifg=none       guibg=#396788    gui=none
hi Info4Bg                   guifg=none       guibg=#2b4e66    gui=none
hi Info5Bg                   guifg=none       guibg=#1d3544    gui=none
hi Info6Bg                   guifg=none       guibg=#0f1c22    gui=none
hi InfoBgBold                guifg=none       guibg=#5599cc    gui=bold
hi Info2BgBold               guifg=none       guibg=#4780aa    gui=bold
hi Info3BgBold               guifg=none       guibg=#396788    gui=bold
hi Info4BgBold               guifg=none       guibg=#2b4e66    gui=bold
hi Info5BgBold               guifg=none       guibg=#1d3544    gui=bold
hi Info6BgBold               guifg=none       guibg=#0f1c22    gui=bold
hi InfoBgUnderline           guifg=none       guibg=#5599cc    gui=underline
hi Info2BgUnderline          guifg=none       guibg=#4780aa    gui=underline
hi Info3BgUnderline          guifg=none       guibg=#396788    gui=underline
hi Info4BgUnderline          guifg=none       guibg=#2b4e66    gui=underline
hi Info5BgUnderline          guifg=none       guibg=#1d3544    gui=underline
hi Info6BgUnderline          guifg=none       guibg=#0f1c22    gui=underline
hi HighInterest              guifg=#cc2244    guibg=none       gui=none
hi HighInterest2             guifg=#aa1d39    guibg=none       gui=none
hi HighInterest3             guifg=#88182e    guibg=none       gui=none
hi HighInterest4             guifg=#661323    guibg=none       gui=none
hi HighInterest5             guifg=#440e18    guibg=none       gui=none
hi HighInterest6             guifg=#22090d    guibg=none       gui=none
hi HighInterestBold          guifg=#cc2244    guibg=none       gui=bold
hi HighInterest2Bold         guifg=#aa1d39    guibg=none       gui=bold
hi HighInterest3Bold         guifg=#88182e    guibg=none       gui=bold
hi HighInterest4Bold         guifg=#661323    guibg=none       gui=bold
hi HighInterest5Bold         guifg=#440e18    guibg=none       gui=bold
hi HighInterest6Bold         guifg=#22090d    guibg=none       gui=bold
hi HighInterestUnderline     guifg=#cc2244    guibg=none       gui=underline
hi HighInterest2Underline    guifg=#aa1d39    guibg=none       gui=underline
hi HighInterest3Underline    guifg=#88182e    guibg=none       gui=underline
hi HighInterest4Underline    guifg=#661323    guibg=none       gui=underline
hi HighInterest5Underline    guifg=#440e18    guibg=none       gui=underline
hi HighInterest6Underline    guifg=#22090d    guibg=none       gui=underline
hi HighInterestBg            guifg=none       guibg=#cc2244    gui=none
hi HighInterest2Bg           guifg=none       guibg=#aa1d39    gui=none
hi HighInterest3Bg           guifg=none       guibg=#88182e    gui=none
hi HighInterest4Bg           guifg=none       guibg=#661323    gui=none
hi HighInterest5Bg           guifg=none       guibg=#440e18    gui=none
hi HighInterest6Bg           guifg=none       guibg=#22090d    gui=none
hi HighInterestBgBold        guifg=none       guibg=#cc2244    gui=bold
hi HighInterest2BgBold       guifg=none       guibg=#aa1d39    gui=bold
hi HighInterest3BgBold       guifg=none       guibg=#88182e    gui=bold
hi HighInterest4BgBold       guifg=none       guibg=#661323    gui=bold
hi HighInterest5BgBold       guifg=none       guibg=#440e18    gui=bold
hi HighInterest6BgBold       guifg=none       guibg=#22090d    gui=bold
hi HighInterestBgUnderline   guifg=none       guibg=#cc2244    gui=underline
hi HighInterest2BgUnderline  guifg=none       guibg=#aa1d39    gui=underline
hi HighInterest3BgUnderline  guifg=none       guibg=#88182e    gui=underline
hi HighInterest4BgUnderline  guifg=none       guibg=#661323    gui=underline
hi HighInterest5BgUnderline  guifg=none       guibg=#440e18    gui=underline
hi HighInterest6BgUnderline  guifg=none       guibg=#22090d    gui=underline
hi Focus                     guifg=#339933    guibg=none       gui=none
hi Focus2                    guifg=#2b802b    guibg=none       gui=none
hi Focus3                    guifg=#236723    guibg=none       gui=none
hi Focus4                    guifg=#1b4e1b    guibg=none       gui=none
hi Focus5                    guifg=#133513    guibg=none       gui=none
hi Focus6                    guifg=#0b1c0b    guibg=none       gui=none
hi FocusBold                 guifg=#339933    guibg=none       gui=bold
hi Focus2Bold                guifg=#2b802b    guibg=none       gui=bold
hi Focus3Bold                guifg=#236723    guibg=none       gui=bold
hi Focus4Bold                guifg=#1b4e1b    guibg=none       gui=bold
hi Focus5Bold                guifg=#133513    guibg=none       gui=bold
hi Focus6Bold                guifg=#0b1c0b    guibg=none       gui=bold
hi FocusUnderline            guifg=#339933    guibg=none       gui=underline
hi Focus2Underline           guifg=#2b802b    guibg=none       gui=underline
hi Focus3Underline           guifg=#236723    guibg=none       gui=underline
hi Focus4Underline           guifg=#1b4e1b    guibg=none       gui=underline
hi Focus5Underline           guifg=#133513    guibg=none       gui=underline
hi Focus6Underline           guifg=#0b1c0b    guibg=none       gui=underline
hi FocusBg                   guifg=none       guibg=#339933    gui=none
hi Focus2Bg                  guifg=none       guibg=#2b802b    gui=none
hi Focus3Bg                  guifg=none       guibg=#236723    gui=none
hi Focus4Bg                  guifg=none       guibg=#1b4e1b    gui=none
hi Focus5Bg                  guifg=none       guibg=#133513    gui=none
hi Focus6Bg                  guifg=none       guibg=#0b1c0b    gui=none
hi FocusBgBold               guifg=none       guibg=#339933    gui=bold
hi Focus2BgBold              guifg=none       guibg=#2b802b    gui=bold
hi Focus3BgBold              guifg=none       guibg=#236723    gui=bold
hi Focus4BgBold              guifg=none       guibg=#1b4e1b    gui=bold
hi Focus5BgBold              guifg=none       guibg=#133513    gui=bold
hi Focus6BgBold              guifg=none       guibg=#0b1c0b    gui=bold
hi FocusBgUnderline          guifg=none       guibg=#339933    gui=underline
hi Focus2BgUnderline         guifg=none       guibg=#2b802b    gui=underline
hi Focus3BgUnderline         guifg=none       guibg=#236723    gui=underline
hi Focus4BgUnderline         guifg=none       guibg=#1b4e1b    gui=underline
hi Focus5BgUnderline         guifg=none       guibg=#133513    gui=underline
hi Focus6BgUnderline         guifg=none       guibg=#0b1c0b    gui=underline


" Semantic groups
hi! link LowInterest           Normal4
hi! link LowInterestBold       Normal4Bold

" Usual groups

hi! link Comment               LowInterest
hi! link Todo                  LowInterestBold
hi! link Search                HighInterestUnderline
hi! link MatchParen            FocusBg
hi! link Visual                Info5Bg

hi! link NonText               LowInterest
hi! link LineNr                LowInterest
hi! link Cursor                HighInterestBg
hi! link CursorLine            Normal2
hi! link CursorLineNr          Interest
hi! link VertSplit             LowInterest

hi! link TabLine               LowInterest
hi! link TabLineFill           LowInterest
hi! link TabLineSel            NormalUnderline
hi! link Title                 TabLine
hi! link SignColumn            Normal
hi! link Folded                Warning

hi! link Pmenu                 Focus5Bg
hi! link PmenuSel              Focus3Bg

hi! link Identifier            Normal
hi!      Constant                   guifg=#99bb99               gui=none
hi! link PreProc               Info2
hi! link Keyword               Info
hi! link Type                  Normal
hi! link Statement             Interest

" Diff
hi! link diffIndexLine         Normal
hi! link diffFile              Interest
hi! link diffNewFile           Interest
hi! link diffLine              Normal
hi! link diffSubname           Type

hi       DiffAdd              guifg=#00aa00 guibg=#111111 gui=none
hi       DiffDelete           guifg=#cc0000 guibg=#111111 gui=none
hi! link DiffText Normal
hi! link diffAdded   DiffAdd
hi! link diffChange  Interest
hi! link diffRemoved DiffDelete

" Plugin-specific groups

" nvim-treesitter
hi!      TSMethod guifg=#5599cc
hi! link Delimiter             Normal
hi! link Function              Normal
hi! link Operator              Normal
hi! link TSConstructor         Normal
hi! link TSKeywordReturn       Statement
hi! link TSNamespace           Normal
hi! link TSString              Constant
hi! link TSStringEscape        Constant
hi! link TSVariableBuiltin     Normal

" nvim-lspconfig
hi! link LspReference          Focus
hi! link LspReferenceText      LspReference
hi! link LspReferenceWrite     LspReferenceText
hi! link LspReferenceRead      LspReferenceText


" coc.nvim

"hi! link CocErrorFloat         Error
"hi! link CocErrorHighlight     ErrorBg
"hi! link CocErrorSign          Error
"hi! link CocHighlightText      Focus
"hi! link CocWarningFloat       Warning
"hi! link CocWarningHighlight   WarningBg
"hi! link CocWarningSign        Warning

" LLVM
hi tgKeyword ctermfg=179
hi tgType ctermfg=110

" C++
hi! link cppStatement Normal
" TODO
hi! cppAccess ctermfg=3 ctermbg=233

" Markdown
hi markdownH1    ctermfg=161
hi markdownH2    ctermfg=162
hi markdownH3    ctermfg=163
hi markdownCode  ctermfg=110
hi! link markdownCodeBlock markdownCode

" Vimwiki
hi! link VimwikiPre Constant

" Leap
hi! link LeapMatch            HighInterest
hi! link LeapLabelPrimary     HighInterest2
hi! link LeapLabelSecondary   HighInterest4Underline

" Custom for vimrc
hi Green ctermfg=47
