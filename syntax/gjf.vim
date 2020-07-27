" Vim syntax file
" Language: Gaussian (Electronic Structure Package) Input Files
" Maintainer: Jarvist Moore Frost, Hessam Mehr
" Latest Revision: 27 July 2020

if exists("b:current_syntax")
  finish
endif

"Oh Fortran, always ignoring case...
syn case ignore

" SCRF options
syn keyword ComOption scrf solvent externaliteration read pcm iefpcm scipcm dpcm cpcm dipole smd nonequilibrium noneq selfconsistent sc 1stvac 1stpcm restart SolventAccessibleSurface SAS AsymmetricIEFPCM PTED CorrectedLinearResponse CorrectedLR checkpoint modify oniompcm g09defaults g03defaults a0 dielectric gradvne gradrho usedensity usemos gascavity saveq loadq writeq cosmors contained
" Guess options
syn keyword ComOption guess read tcheck mix core indo huckel harris am1 only permute always naturalorbitals fragment local cards input restart save print lowsymm nosymm contained
" Geometry options
syn keyword ComOption geom checkpoint check allcheck connectivity nodistance modredundant gic step modify huge independent crowd contained
" Opt, IRC options
syn keyword ComOption readopt calcfc readfc rcfc calcall symmetry restart pseudo maxpoints recalc stepsize qst2 qst3 noraman tight verytight expert loose efmicro quadmacro contained
syn keyword ComOption ts maxstep eigentest noeigentest forward reverse contained
syn keyword ComOption z-matrix modredundant redundant cartesian gediis rfo ef  contained
" SCF options
syn keyword ComOption scf maxcycle conver qc xqc yqc maxconventionalcyc tight sleazy verytight fermi cdiis damp sd ssd dm pseudodiagonalization fulldiagonalization vshift fulllinear incfock noincfock intrep tightlineq verytightlineq vtl varacc novaracc big maxnr symm nosymm save restart contained
" Integral and CPHF options
syn keyword ComOption int integral cphf grid fine finegrid ultrafine ultrafinegrid superfine superfinegrid coarse coarsegrid sg1 sg1grid rdfreq acc2e contained
" Polar options
syn keyword ComOption gamma dcshg cubic ROA optrot fourpoint doublenumer numer susceptibility contained
" Population analysis options
syn keyword ComOption pop full nbo nbo6 nbo6read contained
" Other options
syn keyword ComOption nosymm iop contained
" TD options
syn keyword ComOption singlets triplets root nstates add read restart eqsolv noneqsolv sos NonAdiabaticCoupling conver GOccSt GOccEnd IFact contained

syn keyword ComCmd irc opt fopt popt freq nmr td tda polar td-dftb sp contained
syn keyword ComLink0 nprocshared mem chk oldchk rwf lindaworkers usessh save nosave nproclinda contained
syn keyword ComBasis sto-3g 3-21g 6-21g 6-31g 6-311g d95v d95 shc cep-4g cep-31g cep-121g lanl2mb lanl2dz sdd sddall cc-pvdz cc-pvtz cc-pvqz cc-pv5z cc-pv6z sv svp tzv tzvp def2sv def2svp def2svpp def2tzv def2tzvp def2tzvpp def2qzv def2qzvp def2qzvpp qzvp midix epr-ii epr-iii ugbs mtsmall w06 fit notfit auto contained
syn keyword ComMethod hf mp2 mp3 mp4 mp5 b2plyp mpw2plyp DSDPBEP86 PBE0DH PBEQIDH B2PLYPD3 ci
syn Ukeyword UComMethod Uhf Ump2 Ump3 Ump4 Ump5 Ub2plyp Umpw2plyp UDSDPBEP86 UPBE0DH UPBEQIDH UB2PLYPD3 Uci
syn rokeyword roComMethod rohf romp2 romp3 romp4 romp5 rob2plyp rompw2plyp roDSDPBEP86 roPBE0DH roPBEQIDH roB2PLYPD3 roci
syn rkeyword rComMethod rhf rmp2 rmp3 rmp4 rmp5 rb2plyp rmpw2plyp rDSDPBEP86 rPBE0DH rPBEQIDH rB2PLYPD3 rci
" DFT Functionals
syn keyword ComMethod s xa b pw91 mpw g96 pbe o tpss revtpss brx pkzb wpbeh pbeh vwn vwn5 lyp pl p86 pw91 b95 kcis brc pkzb vp86 v5lyp vsxc hcth m06 m06l b97d b97d3 sogga11 m11l mn12l n12 b3lyp b3p86 b1b95 b1lyp b98 m06hf m062x lc-wpbe cam-b3lyp wb97xd apfd mn15 mn15l m11  m05 m052x m08hx PW6B95 PW6B95D3 PBE1PBE PBEh1PBE OHSE2PBE HSEH1PBE OHSE1PBE tpss tpssh bmk x3lyp bhandh bhandhlyp mPW1LYP mPW1PBE mPW3PBE mPW1PW91 
syn keyword ComMethod s roxa rob ropw91 rompw rog96 ropbe roo rotpss rorevtpss robrx ropkzb rowpbeh ropbeh rovwn rovwn5 rolyp ropl rop86 ropw91 rob95 rokcis robrc ropkzb rovp86 rov5lyp rovsxc rohcth rom06 rom06l rob97d rob97d3 sogga11 rom11l romn12l ron12 rob3lyp rob3p86 rob1b95 rob1lyp rob98 rom06hf rom062x rolc-wpbe rocam-b3lyp rowb97xd roapfd romn15 romn15l rom11 ro m05 rom052x rom08hx roPW6B95 roPW6B95D3 roPBE1PBE roPBEh1PBE roOHSE2PBE roHSEH1PBE roOHSE1PBE rotpss rotpssh robmk rox3lyp robhandh robhandhlyp romPW1LYP romPW1PBE romPW3PBE romPW1PW91
syn keyword ComMethod s rxa rb rpw91 rmpw rg96 rpbe ro rtpss rrevtpss rbrx rpkzb rwpbeh rpbeh rvwn rvwn5 rlyp rpl rp86 rpw91 rb95 rkcis rbrc rpkzb rvp86 rv5lyp rvsxc rhcth rm06 rm06l rb97d rb97d3 sogga11 rm11l rmn12l rn12 rb3lyp rb3p86 rb1b95 rb1lyp rb98 rm06hf rm062x rlc-wpbe rcam-b3lyp rwb97xd rapfd rmn15 rmn15l rm11 r m05 rm052x rm08hx rPW6B95 rPW6B95D3 rPBE1PBE rPBEh1PBE rOHSE2PBE rHSEH1PBE rOHSE1PBE rtpss rtpssh rbmk rx3lyp rbhandh rbhandhlyp rmPW1LYP rmPW1PBE rmPW3PBE rmPW1PW91 
syn keyword ComMethod s uxa ub upw91 umpw ug96 upbe uo utpss urevtpss ubrx upkzb uwpbeh upbeh uvwn uvwn5 ulyp upl up86 upw91 ub95 ukcis ubrc upkzb uvp86 uv5lyp uvsxc uhcth um06 um06l ub97d ub97d3 sogga11 um11l umn12l un12 ub3lyp ub3p86 ub1b95 ub1lyp ub98 um06hf um062x ulc-wpbe ucam-b3lyp uwb97xd uapfd umn15 umn15l um11 u m05 um052x um08hx uPW6B95 uPW6B95D3 uPBE1PBE uPBEh1PBE uOHSE2PBE uHSEH1PBE uOHSE1PBE utpss utpssh ubmk ux3lyp ubhandh ubhandhlyp umPW1LYP umPW1PBE umPW3PBE umPW1PW91 contained

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
