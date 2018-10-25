hostname 'chefnode'

windows_workgroup 'myworkgroup'

include_recipe '::_windows_autorun'
include_recipe '::_windows_feature'
include_recipe '::_windows_font'
include_recipe '::_windows_pagefile'
include_recipe '::_windows_shortcut'
