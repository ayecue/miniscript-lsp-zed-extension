; Keywords
[
  "function"
  "end function"
  "return"
  "if"
  "then"
  "else"
  "else if"
  "end if"
  "while"
  "end while"
  "for"
  "in"
  "end for"
  "not"
  "or"
  "and"
  "isa"
] @keyword

; Constants
[
  (null)
  (false)
  (true)
] @constant.builtin

; Iteration keyword
(break_statement) @keyword
(continue_statement) @keyword

; Function calls
(function_call
  name: (identifier) @function)

; Variables
(variable
  name: (identifier) @variable)

; Literals
(number) @number
(string) @string

; Comments
(comment) @comment

; Tokens
;-------

[
  "."
] @punctuation.delimiter

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
]  @punctuation.bracket

; Operators
[
  "<"
  "<="
  "=="
  "!="
  ">="
  ">"
  "+"
  "-"
  "*"
  "/"
  "%"
  "@"
] @operator