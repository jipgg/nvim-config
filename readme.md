# version requirements
You need Neovim 0.10 for this config.
# cross-platform
I use this same config on both my windows and linux machine.
Should work fine on both platforms out-of-the-box. (probably)
# check *config/ensure_installed.lua*
Mason relies on specific package managers to be installed for specific LSPs
and will try to install them on every launch and fail consistently.
In order to keep this config to require as little implicit external
dependencies as necessary, mason's ensure_installed in blank by default.
Set `__MASON_ENSURE_INSTALLED__` to `true` in *lua/config/first.lua* if you want to make use of this behavior and remove
the LSP entries that you don't require to be installed.
Keeping it off and just installing the manually with `:Mason` is perfectly viable as well.

