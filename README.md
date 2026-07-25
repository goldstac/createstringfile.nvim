# createstringfile.nvim

A lightweight Neovim plugin that adds a `!createstringfile` snippet to scaffold a C++ file-creation utility function.

```
void create_file(const std::string& filepath) {
    std::ofstream file(filepath);
}
```

## Installation

```lua
{
  "goldstac/createstringfile.nvim",
  ft = "cpp",
  dependencies = { "L3MON4D3/LuaSnip" },
}
```

## Usage

Open a `.cpp` file, type `!createstringfile`, and select it from the completion menu.

Requires `#include <fstream>` at the top of your file.

## Issues & Suggestions

Found a bug or have an idea? Open an [issue](https://github.com/goldstac/createstringfile.nvim/issues).
