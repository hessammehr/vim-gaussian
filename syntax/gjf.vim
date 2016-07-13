" Vim syntax file
" Language: Gaussian (Electronic Structure Package) Input Files
" Maintainer: Jarvist Moore Frost, Hessam Mehr
" Latest Revision: 30 June 2016

if exists("b:current_syntax")
  finish
endif

"Oh Fortran, always ignoring case...
syn case ignore

" SCRF options
syn keyword ComOption scrf solvent contained
" Guess options
syn keyword ComOption guess read tcheck contained
" Geometry options
syn keyword ComOption geom checkpoint allcheck connectivity nodistance contained
" Opt, IRC options
syn keyword ComOption calcfc calcall symmetry restart pseudo maxpoints contained
" SCF options
syn keyword ComOption scf maxcycle conver qc contained
" Integral and CPHF options
syn keyword ComOption int integral cphf grid fine finegrid ultrafine ultrafinegrid superfine superfinegrid coarse coarsegrid sg1 sg1grid contained
" Population analysis options
syn keyword ComOption pop full nbo nbo6 nbo6read contained
" Other options
syn keyword ComOption nosymm contained
" TD options
syn keyword ComOption singlets triplets root contained

syn keyword ComCmd irc opt fopt popt freq nmr td contained
syn keyword ComLink0 nprocshared mem chk oldchk rwf lindaworkers usessh save nosave contained
syn keyword ComBasis sto-3g 3-21g 6-21g 6-31g 6-311g d95v d95 shc cep-4g cep-31g cep-121g lanl2mb lanl2dz sdd sddall cc-pvdz cc-pvtz cc-pvqz cc-pv5z cc-pv6z sv svp tzv tzvp def2sv def2svp def2svpp def2tzv def2tzvp def2tzvpp def2qzv def2qzvp def2qzvpp qzvp midix epr-ii epr-iii ugbs mtsmall w06 fit notfit auto contained
syn keyword ComMethod hf mp2 mp3 mp4 mp5 b2plyp mpw2plyp ci
" DFT Functionals
syn keyword ComMethod s xa b pw91 mpw g96 pbe o tpss revtpss brx pkzb wpbeh pbeh vwn vwn5 lyp pl p86 pw91 b95 kcis brc pkzb vp86 v5lyp vsxc hcth m06 m06l b97d b97d3 sogga11 m11l mn12l n12 b3lyp b3p86 b1b95 b1lyp b98 m06hf m062x lc-wpbe cam-b3lyp wb97xd contained

syn region  ComDoubleQuote   start=+"+ skip=+\\"+ end=+"+
syn region ComStartup start=/%/ end='[=$]' contains=ComLink0
syn match ComRoute /#.*$/ contains=ComBasis,ComCmd,ComOption,ComMethod
syn match ComAtom    ' \a\((.*)\)\= '

" Comments: {{{1
"==========
syn cluster     shCommentGroup  contains=shTodo,@Spell
syn keyword     shTodo          contained                       COMBAK FIXME TODO XXX NOTE

"Let there be colour
let b:current_syntax = "gjf"
hi def link shTodo      Todo
hi def link ComCmd  Function
hi def link ComOption keyword
hi def link ComLink0      Function
hi def link shDoubleQuote String
hi def link shComment   Comment
hi def link ComAtom      Type
hi def link ComBasis      Type
hi def link ComMethod	Type
hi def link ComStartup   Macro
hi def link ComRoute	Macro
