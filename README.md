# markdown-extra-syntax

To use this plugin, add these lines to your vimrc.

```
augroup markdown_extra_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown_extra
augroup END
```
