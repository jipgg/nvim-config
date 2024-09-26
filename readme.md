# cross-platform
I use this same config on both my windows and linux machine.
Should work fine on both platforms out-of-the-box. (probably)
# check *config/ensure_installed.lua*
Mason specific on specific package managers to be installed for specific LSPs
and will try to install them on every launch and fail.
Set `__MASON_ENSURE_INSTALLED__` to `true` if you want to make use and remove the entries
that you don't require to be installed. Or keep it off and just install the manually with `:Mason`

