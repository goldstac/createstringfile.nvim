local M = {}

M.snippet_text = {
  "void create_file(const std::string& filepath, const std::string& content) {",
  "    std::ofstream file(filepath);",
  "    file << content;",
  "}",
}

function M.setup(opts)
  opts = opts or {}

  local ok, luasnip = pcall(require, "luasnip")
  if ok then
    luasnip.add_snippets("cpp", {
      luasnip.snippet("!createstringfile", {
        luasnip.text_node(M.snippet_text),
      }),
    })
  end

  local snippet_dir = vim.fn.stdpath("config") .. "/snippets"
  local snippet_path = snippet_dir .. "/cpp.json"

  vim.fn.mkdir(snippet_dir, "p")

  local existing = {}
  local ok2, f = pcall(vim.fn.readfile, snippet_path)
  if ok2 and type(f) == "table" then
    ok2, existing = pcall(vim.json.decode, table.concat(f))
    if not ok2 then existing = {} end
  end

  if not existing["!createstringfile"] then
    existing["!createstringfile"] = {
      prefix = "!createstringfile",
      body = M.snippet_text,
      description = "Insert create_file function",
    }
    vim.fn.writefile({ vim.fn.json_encode(existing) }, snippet_path)
  end
end

return M
