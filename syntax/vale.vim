syn keyword valeNotes contained TODO FIXME XXX NOTE

syn keyword valeBool true false

syn match valeOp '[+^\-\*/%#@&=<>|!?]'

syn match valeComment '//.*$' contains=valeNotes,valeMLComment
syn region valeMLComment start='/\*' end='\*/' contains=valeNotes

syn match valePreproc '#\w*'

syn match valeModule '\<[A-Z]\w*\.'

syn keyword valeControl as else fn for if imm impl infer-ret inl lock mat mut nad not or ret yon while
syn keyword valeKeywords abstract destruct drop interface rules sealed struct this virtual weakable exported export extern

syn keyword valeType str int bool Array void

" Highlight all capitalized words as types
syn match valeType '\w\@<![A-Z]\w*'

" Highlight function calls - this can make the highlighting a bit
" noisy, comment this out to disable it
syn match valeFnCall '[a-z_]\w*(\@='

syn region stringLiteral start='"' end='"' contains=valeEscapes
syn region stringLiteral start="'" end="'"

syn match valeEscapes '\\.'

syn match integerLiteral '\([A-Za-z0-9]\@<!\)[0-9_]\+'
syn match integerLiteral '\([A-Za-z0-9]\@<!\)0b[01_]\+'
syn match integerLiteral '\([A-Za-z0-9]\@<!\)0o[0-7_]\+'
syn match integerLiteral '\([A-Za-z0-9]\@<!\)0x[0-9A-Fa-f_]\+'

syn match doubleLiteral '\([A-Za-z0-9]\@<!\)\d\+\.\d*'


let b:current_syntax = "vale"

hi def link valeNotes      Todo
hi def link valeComment    Comment
hi def link valeMLComment  Comment
hi def link valePreproc    PreProc
hi def link valeOp         Operator
hi def link valeKeywords   Keyword
hi def link valeControl    Keyword
hi def link valeBool       Boolean
hi def link valeFnCall     Function
hi def link valeModule     ModPath
hi def link valeType       Type
hi def link stringLiteral  String
hi def link integerLiteral Number
hi def link doubleLiteral  Number
