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
  "new"
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

(function_statement_call
  name: (identifier) @function)

; Variables
(variable
  name: (identifier) @variable)

(variable
  name: (dot_index_expression) @variable.property)

(variable
  name: (bracket_index_expression) @variable.property)

; Literals
(number) @number
(string) @string

; Comments
(comment) @comment

; Method calls
;--------------------------

(function_call
  name: (dot_index_expression) @function.method)

(function_call
  name: (bracket_index_expression) @function.method)

(function_statement_call
  name: (dot_index_expression) @function.method)

(function_statement_call
  name: (bracket_index_expression) @function.method)

; Tokens
;-------

[
  "."
  ":"
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