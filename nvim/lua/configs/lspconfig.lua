require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "gopls", "pyright", "tsserver", "rust_analyzer", "lua_ls", "python-lsp-server" }

local on_attach = function(client, bufnr)
    -- vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', 'ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'K',  vim.lsp.buf.hover, {})
  vim.lsp.completion.enable(true, client.id, bufnr, {
    autotrigger = true,
    convert = function (item)
      return { abb = item.label:gsub('%b()', '')}
    end
  })
end

-- read :h vim.lsp.config for changing options of lsp servers 
vim.lsp.config("gopls", {
  cmd = { "gopls" },                                   -- Command to start the language server
  filetypes = { "go", "gomod", "gowork", "gotmpl", "gosum" }, -- File types that this server will handle
  root_markers = { "go.mod", "go.work", ".git" },      -- Markers to identify the root of the project
  settings = {                                         -- Settings for the language server
    gopls = {
      gofumpt = true,
      codelenses = {
        gc_details = false,
        generate = true,
        regenerate_cgo = true,
        run_govulncheck = true,
        test = true,
        tidy = true,
        upgrade_dependency = true,
        vendor = true,
      },
      hints = {
        assignVariableTypes = false,
        compositeLiteralFields = false,
        compositeLiteralTypes = false,
        constantValues = false,
        functionTypeParameters = false,
        parameterNames = false,
        rangeVariableTypes = false,
      },
      analyses = {
        nilness = true,
        unusedparams = true,
        unusedwrite = true,
        useany = true,
        unreachable = true,
        modernize = true,
        stylecheck = true,
        appends = true,
        asmdecl = true,
        assign = true,
        atomic = true,
        bools = true,
        buildtag = true,
        cgocall = true,
        composite = true,
        contextcheck = true,
        deba = true,
        atomicalign = true,
        composites = true,
        copylocks = true,
        deepequalerrors = true,
        defers = true,
        deprecated = true,
        directive = true,
        embed = true,
        errorsas = true,
        fillreturns = true,
        framepointer = true,
        gofix = true,
        hostport = true,
        infertypeargs = true,
        lostcancel = true,
        httpresponse = true,
        ifaceassert = true,
        loopclosure = true,
        nilfunc = true,
        nonewvars = true,
        noresultvalues = true,
        printf = true,
        shadow = true,
        shift = true,
        sigchanyzer = true,
        simplifycompositelit = true,
        simplifyrange = true,
        simplifyslice = true,
        slog = true,
        sortslice = true,
        stdmethods = true,
        stdversion = true,
        stringintconv = true,
        structtag = true,
        testinggoroutine = true,
        tests = true,
        timeformat = true,
        unmarshal = true,
        unsafeptr = true,
        unusedfunc = true,
        unusedresult = true,
        waitgroup = true,
        yield = true,
        unusedvariable = true,
      },
      usePlaceholders = true,
      completeUnimported = true,
      staticcheck = true,
      directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
      semanticTokens = true,
    },
  },
})

vim.lsp.enable(servers)

