-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/user/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/user/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/user/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/user/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/user/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FTerm.nvim"] = {
    config = { '\27LJ\1\2€\2\0\0\a\0\f\0\0224\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0003\1\6\0\16\2\0\0%\3\a\0%\4\b\0%\5\t\0\16\6\1\0>\2\5\1\16\2\0\0%\3\n\0%\4\b\0%\5\v\0\16\6\1\0>\2\5\1G\0\1\0005<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>\6t+<CMD>lua require("FTerm").toggle()<CR>\t<F2>\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\nsetup\nFTerm\frequire\0' },
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/FTerm.nvim"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\1\2¿\1\0\0\5\0\n\0\0174\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\a\0%\3\b\0003\4\t\0>\0\5\1G\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:BufferPrevious<CR>\f<S-TAB>\1\0\2\vsilent\2\fnoremap\2\20:BufferNext<CR>\n<TAB>\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/colorbuddy.vim"
  },
  kommentary = {
    loaded = false,
    needs_bufread = false,
    path = "/home/user/.local/share/nvim/site/pack/packer/opt/kommentary"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\2_\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\foptions\1\0\0\1\0\1\ntheme\14powerline\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\1\2Ø\1\0\0\3\1\t\2\0314\0\0\0007\0\1\0007\0\2\0>\0\1\2\b\0\0\0T\0\21€4\0\0\0007\0\1\0007\0\3\0>\0\1\0027\0\4\0\b\0\1\0T\0\t€4\0\0\0007\0\1\0007\0\5\0+\1\0\0007\1\6\1%\2\a\0>\1\2\0?\0\0\0T\0\b€+\0\0\0007\0\6\0%\1\a\0@\0\2\0T\0\3€+\0\0\0007\0\b\0@\0\1\0G\0\1\0\1À\17autopairs_cr\t<cr>\besc\18compe#confirm\rselected\18complete_info\15pumvisible\afn\bvim\0þÿÿÿ\31£\2\1\0\a\0\17\0\0294\0\0\0007\0\1\0007\0\2\0004\1\3\0%\2\4\0>\1\2\0024\2\3\0%\3\4\0>\2\2\0027\2\5\2>\2\1\0014\2\6\0002\3\0\0:\3\a\0024\2\0\0007\2\b\2%\3\n\0:\3\t\0024\2\a\0001\3\f\0:\3\v\2\16\2\0\0%\3\r\0%\4\14\0%\5\15\0003\6\16\0>\2\5\0010\0\0€G\0\1\0\1\0\2\texpr\2\fnoremap\2&v:lua.MUtils.completion_confirm()\t<CR>\6i\0\23completion_confirm\5\27completion_confirm_key\6g\vMUtils\a_G\nsetup\19nvim-autopairs\frequire\20nvim_set_keymap\bapi\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/user/.local/share/nvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-compe"] = {
    after_files = { "/home/user/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    config = { "\27LJ\1\2¢\4\0\0\5\0\26\0\0294\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\5\0003\3\4\0:\3\6\0023\3\a\0:\3\b\0023\3\t\0:\3\n\0023\3\v\0:\3\f\0023\3\r\0:\3\14\0023\3\15\0:\3\16\0023\3\17\0:\3\18\0023\3\19\0:\3\20\0023\3\22\0003\4\21\0:\4\23\3:\3\24\2:\2\25\1>\0\2\1G\0\1\0\vsource\nemoji\14filetypes\1\0\0\1\3\0\0\rmarkdown\ttext\18snippets_nvim\1\0\1\tkind\n ï— \nspell\1\0\1\tkind\n ï‘ˆ \rnvim_lua\1\0\1\tkind\n îŸ… \rnvim_lsp\1\0\1\tkind\n îœ– \nvsnip\1\0\1\tkind\n ï— \tcalc\1\0\1\tkind\n ï‡¬ \vbuffer\1\0\1\tkind\n ïŽ \tpath\1\0\0\1\0\1\tkind\n ï›— \1\0\f\17autocomplete\2\19source_timeout\3È\1\fenabled\2\ndebug\1\14preselect\venable\19max_abbr_width\3d\21incomplete_delay\3\3\19max_menu_width\3d\19max_kind_width\3d\15min_length\3\1\18throttle_time\3P\18documentation\2\nsetup\ncompe\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/user/.local/share/nvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LJ\1\2¢\1\0\0\b\0\6\0\0244\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\0\3\0>\0\1\0024\1\4\0\16\2\0\0>\1\2\4D\4\a€4\6\0\0%\a\5\0>\6\2\0026\6\5\0067\6\2\0062\a\0\0>\6\2\1B\4\3\3N\4÷G\0\1\0\14lspconfig\npairs\22installed_servers\nsetup\15lspinstall\frequire5\0\0\2\1\3\0\a+\0\0\0>\0\1\0014\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0\0À\fbufdo e\bcmd\bvimV\1\0\3\0\5\0\n1\0\0\0\16\1\0\0>\1\1\0014\1\1\0%\2\2\0>\1\2\0021\2\4\0:\2\3\0010\0\0€G\0\1\0\0\22post_install_hook\15lspinstall\frequire\0\0" },
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-rdark"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-rdark"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/user/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/user/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: barbar.nvim
time([[Config for barbar.nvim]], true)
try_loadstring("\27LJ\1\2¿\1\0\0\5\0\n\0\0174\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\4\0%\3\5\0003\4\6\0>\0\5\0014\0\0\0007\0\1\0007\0\2\0%\1\3\0%\2\a\0%\3\b\0003\4\t\0>\0\5\1G\0\1\0\1\0\2\vsilent\2\fnoremap\2\24:BufferPrevious<CR>\f<S-TAB>\1\0\2\vsilent\2\fnoremap\2\20:BufferNext<CR>\n<TAB>\6n\20nvim_set_keymap\bapi\bvim\0", "config", "barbar.nvim")
time([[Config for barbar.nvim]], false)
-- Config for: FTerm.nvim
time([[Config for FTerm.nvim]], true)
try_loadstring('\27LJ\1\2€\2\0\0\a\0\f\0\0224\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\3\0007\0\4\0007\0\5\0003\1\6\0\16\2\0\0%\3\a\0%\4\b\0%\5\t\0\16\6\1\0>\2\5\1\16\2\0\0%\3\n\0%\4\b\0%\5\v\0\16\6\1\0>\2\5\1G\0\1\0005<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>\6t+<CMD>lua require("FTerm").toggle()<CR>\t<F2>\6n\1\0\2\vsilent\2\fnoremap\2\20nvim_set_keymap\bapi\bvim\nsetup\nFTerm\frequire\0', "config", "FTerm.nvim")
time([[Config for FTerm.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\2_\0\0\3\0\6\0\t4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\4\0003\2\3\0:\2\5\1>\0\2\1G\0\1\0\foptions\1\0\0\1\0\1\ntheme\14powerline\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-lspinstall
time([[Config for nvim-lspinstall]], true)
try_loadstring("\27LJ\1\2¢\1\0\0\b\0\6\0\0244\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0014\0\0\0%\1\1\0>\0\2\0027\0\3\0>\0\1\0024\1\4\0\16\2\0\0>\1\2\4D\4\a€4\6\0\0%\a\5\0>\6\2\0026\6\5\0067\6\2\0062\a\0\0>\6\2\1B\4\3\3N\4÷G\0\1\0\14lspconfig\npairs\22installed_servers\nsetup\15lspinstall\frequire5\0\0\2\1\3\0\a+\0\0\0>\0\1\0014\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0\0À\fbufdo e\bcmd\bvimV\1\0\3\0\5\0\n1\0\0\0\16\1\0\0>\1\1\0014\1\1\0%\2\2\0>\1\2\0021\2\4\0:\2\3\0010\0\0€G\0\1\0\0\22post_install_hook\15lspinstall\frequire\0\0", "config", "nvim-lspinstall")
time([[Config for nvim-lspinstall]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-autopairs', 'nvim-compe'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'kommentary'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
