local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then return end

indent_blankline.setup {
    -- indent_blankline_char_list= ['|', '¦', '┆', '┊'],
    context_highlight_list = {
        'IndentBlanklineIndent5',
        'IndentBlanklineIndent4',
        'IndentBlanklineIndent6',
        'IndentBlanklineIndent2',
        'IndentBlanklineIndent1',
        'IndentBlanklineIndent3',
    },
    context_patterns = {
        "declaration", "expression", "jsx_element",
        "jsx_self_closing_element", "^object", "pattern", "primary_expression",
        "statement", "switch_body"
    },
    show_current_context = true,
    use_treesitter = true,
}
