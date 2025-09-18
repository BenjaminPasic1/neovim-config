return {
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = function(fname)
        return vim.fs.dirname(fname)
    end,
}

