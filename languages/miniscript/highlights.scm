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

; Assignments
(assignment_operator) @punctuation.assignment

; For Iterator
(for_statement 
  variable: (identifier) @variable)

; Constants
[
  (null)
  (false)
  (true)
] @constant.builtin

; Iteration keyword
(break_statement) @keyword
(continue_statement) @keyword

; Variables
(variable (identifier) @variable)
(variable (dot_index_expression) @variable.property)
(variable (bracket_index_expression) @variable.property)

; Literals
(number) @number
(string) @string

; Comments
(comment) @comment

; Function defintiions arguments
;--------------------------
(function_definition 
  parameters: (parameters (identifier)) @argument)

; Function call statement
;--------------------------

(function_statement_call
  name: (variable (identifier)) @function)

(function_statement_call
  name: (variable (dot_index_expression)) @function.method)

(function_statement_call
  name: (variable (bracket_index_expression)) @function.method)

; Function call expression
;--------------------------

(function_call
  name: (variable (identifier)) @function)

(function_call
  name: (variable (dot_index_expression)) @function.method)

(function_call
  name: (variable (bracket_index_expression)) @function.method)

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