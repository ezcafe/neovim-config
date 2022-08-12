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
		"class",
		"return",
		"function",
		"method",
		"^if",
		"^while",
		"jsx_element",
		"^for",
		"^object",
		"^table",
		"block",
		"arguments",
		"if_statement",
		"else_clause",
		"jsx_element",
		"jsx_self_closing_element",
		"try_statement",
		"catch_clause",
		"import_statement",
		"operation_type",
	},
    show_current_context = true,	
	use_treesitter = true,
}