" Vim syntax file
" Language: Gaussian (Electronic Structure Package) Input Files
" Maintainer: Jarvist Moore Frost, Hessam Mehr
" Latest Revision: 30 June 2016

if exists("b:current_syntax")
  finish
endif

"Oh Fortran, always ignoring case...
syn case ignore

" Keywords

syn keyword ComBlockCmd dft tddft geometry geom end basis opt freq int scf guess scrf
syn keyword ComTask "#[np]?"
syn keyword ComStartup "\%.*$"

syn region  ComDoubleQuote   start=+"+ skip=+\\"+ end=+"+

syn match ComAtom    " \a "

syn match ComNumber            "-\=\<\d\+\>#\="
syn match ComNumber         "\<\d\>" display
syn match   ComFloat     "\.\d\+\%([eE][+-]\=\d\+\)\=[jJ]\=\>" display
syn match   ComFloat     "\<\d\+[eE][+-]\=\d\+[jJ]\=\>"  display
syn match   ComFloat     "\<\d\+\.\d*\%([eE][+-]\=\d\+\)\=[jJ]\=" display

" Comments: {{{1
"==========
syn cluster     shCommentGroup  contains=shTodo,@Spell
syn keyword     shTodo          contained                       COMBAK FIXME TODO XXX NOTE
" syn match       shComment                       "^\s*\zs#.*$"   contains=@shCommentGroup
" syn match       shComment                       "\s\zs#.*$"     contains=@shCommentGroup
" syn match       shQuickComment  contained       "#.*$"

"Let there be colour
let b:current_syntax = "gjf"
hi def link shTodo      Todo
hi def link ComBlockCmd  Statement
hi def link ComTask      Special
hi def link shDoubleQuote String
hi def link shComment   Comment
hi def link shNumber    Number
hi def link ComAtom      PreProc
hi def link ComStartup   Comment
hi def link ComFloat     Float
