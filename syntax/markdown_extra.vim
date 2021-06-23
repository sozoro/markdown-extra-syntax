runtime! syntax/markdown.vim

if exists("b:current_syntax")
  unlet b:current_syntax
endif

syntax region markdownStrikeout matchgroup=markdownStrikeoutDelimiter start=/\~\~/ skip=/\\\~\~/ end=/\~\~/
syntax region markdownUnderline matchgroup=markdownUnderlineDelimiter start=/\[\%(.*]{\.underline}\)\@=/ end=/\]{\.underline}/

syntax cluster markdownInline contains=markdownLineBreak,markdownLinkText,markdownItalic,markdownBold,markdownCode,markdownEscape,@htmlTop,markdownError,markdownValid,markdownStrikeout,markdownUnderline

highlight link markdownBold Statement
highlight link markdownStrikeout Comment
highlight link markdownStrikeoutDelimiter markdownStrikeout
highlight link markdownUnderline Statement
highlight markdownUnderline cterm=underline
highlight link markdownUnderlineDelimiter Comment

let b:current_syntax = "markdown_extra"
