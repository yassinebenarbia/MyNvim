-- necessery plugins
local essential_plugs = require('MyNvim.plugins-install');

-- necessery capability to load the additional plugins
local status, capability = pcall(require,'MyNvim.capabilities.extend_table')
if not status then
  print('Cannot load extend_tbl capabilities, thus abandoning the additional plugins\n',
    debug.getinfo(1).source:match("@?(.*/)")
  );
end

-- additional plugins
local status, additional_plugs = pcall(require, 'plugins-install');
if status then
  essential_plugs = capability.extend_tbl_over_and_set_lazy(essential_plugs, additional_plugs, true);
end

-- Installing Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = ' '

-- TODO: add lazy configuration
-- Note: can add opts parameter to specify custom options
require("lazy").setup(essential_plugs)
