((macro_invocation
  (token_tree) @injection.content)
 (#set! injection.language "rust")
 (#set! injection.include-children))

((macro_rule
  (token_tree) @injection.content)
 (#set! injection.language "rust")
 (#set! injection.include-children))

; mark arbitary languages with a comment
((((comment) @injection.language) .
  (indented_string_expression (string_fragment) @injection.content))
  (#set! injection.combined))