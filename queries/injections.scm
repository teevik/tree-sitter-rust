((macro_invocation
  (token_tree) @injection.content)
 (#set! injection.language "rust")
 (#set! injection.include-children))

((macro_rule
  (token_tree) @injection.content)
 (#set! injection.language "rust")
 (#set! injection.include-children))

; mark arbitary languages with a comment
((((block_comment) @injection.language) .
  (raw_string_literal (string_content) @injection.content))
  (#set! injection.combined))