(doctype) @constant

((attribute_name) @keyword
 (#match? @keyword "^phx-"))

; HEEx attributes are highlighted as HTML attributes
(attribute_name) @attribute
[
  (attribute_value)
  (quoted_attribute_value)
] @string

; HEEx tags are highlighted as HTML
(tag_name) @tag

; HEEx components are highlighted as Elixir modules and functions
(component_name
  [
    (module) @module
    (function) @function
    "." @punctuation.delimiter
  ])

[
  "/>"
  "<!"
  "<"
  "</"
  ">"
] @punctuation.bracket

(directive ["<%" "<%%=" "<%=" "%>"] @keyword)

[
  "{"
  "}"
] @keyword

"=" @operator

(comment) @comment

(ERROR) @error