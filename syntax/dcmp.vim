" Vim syntax file
" Language: dcmp
" Upstream: TODO

if exists('b:current_syntax')
    finish
endif

syntax keyword dcmpKeyword br_table continue data else export function global
    \ if loop memory return select_if table var
syntax keyword dcmpLabelKeyword label goto nextgroup=dcmpLabel skipwhite

syntax keyword dcmpType byte byte_ptr double double_ptr float float_ptr funcref
    \ int int_ptr long long_ptr short short_ptr ubyte ubyte_ptr uint uint_ptr
    \ ushort ushort_ptr

syntax region dcmpBlock start='{' end='}' transparent fold

syntax match dcmpNumber '\v\d+'
syntax match dcmpNumber '\v\d+\.\d+'
syntax region dcmpString start='"' skip='\\"' end='"'

syntax match dcmpOperator '\v[+\-*/%&|^!~<>=]'

syntax match dcmpVar '\v[a-zA-Z]\w*'
"
syntax match dcmpAttribute 'align:'
syntax match dcmpAttribute 'initial:'
syntax match dcmpAttribute 'max:'
syntax match dcmpAttribute 'min:'
syntax match dcmpAttribute 'offset:'

syntax match dcmpFunction '\v<\w+>[\(]@='

syntax match dcmpLabel '\v<\k*:?' contained

hi def link dcmpAttribute Special
hi def link dcmpFunction Function
hi def link dcmpKeyword Keyword
hi def link dcmpLabel Label
hi def link dcmpLabelKeyword Keyword
hi def link dcmpNumber Number
hi def link dcmpOperator Operator
hi def link dcmpString String
hi def link dcmpType Type
hi def link dcmpVar Identifier

let b:current_syntax = 'dcmp'
