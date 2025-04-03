local M = {}

M.setup = function()
  local client_id = nil

  vim.api.nvim_create_autocmd("FileType", {
    pattern = "html",
    callback = function()
      if client_id then
        -- Client already exists, just attach
        vim.lsp.buf_attach_client(0, client_id)
        return
      end

      -- Start the client
      local client = vim.lsp.start_client({
        name = "html-lsp",
        cmd = { "/home/shbhtngpl/personal/learn/html-lsp/bin/html-lsp" },
        on_attach = function(_, bufnr)
          print("html-lsp attached to buffer " .. bufnr)
        end,
        on_exit = function(code, signal, client_id)
          print("html-lsp exited with code " .. code .. " and signal " .. signal)
          client_id = nil
        end
      })

      if not client then
        vim.notify("Failed to start html-lsp", vim.log.levels.ERROR)
        return
      end

      client_id = client
      vim.lsp.buf_attach_client(0, client_id)
    end
  })
end

M.setup()

return M
