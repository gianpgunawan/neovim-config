return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function ()
        require('telescope').setup{
            defaults = {
                file_ignore_patterns = {
                    "node_modules",
                    ".git",
                    "%.exe$",
                    "%.a$",
                    "%.o$",
                    "%.so$",
                    "%.dll$",
                },
            }
        }
    end
}
