return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "skim"
    vim.g.vimtex_compiler_method = "tectonic"
    vim.g.vimtex_compiler_latexmk = {
      build_dir = "build",
      -- continuous = 1, -- enable continuous compilation
    }
    vim.g.vimtex_compiler_autostart = 1 -- autostart compiler on open
    vim.keymap.set("n", "<leader>lc", "<cmd>VimtexCompile<CR>", { desc = "Compile LaTeX" })
  end,
}
