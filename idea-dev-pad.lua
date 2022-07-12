-- <unassigned>  :  \\?\HID#VID_05A4&PID_9862&MI_00#9&8BA0B7&0&0000#{884B96C3-56EF-11D1-BC8C-00A0C91405DD} [394968] :  keyboard
lmc.minimizeToTray = true
lmc_minimize()

-- lmc_device_set_name('DEVPAD', '8BA0B7') -- samotnej noťas
-- lmc_device_set_name('DEVPAD', '2B555A9C') -- ostrov
lmc_device_set_name('DEVPAD', '21788A47') -- kancelář

lmc_print_devices()

-- define callback for whole device
lmc_set_handler('DEVPAD',function(button, direction)
  if (direction == 1) then
    return -- ignore down
  end


  -- 106     <*>
  if     (button == 106) then
    lmc_send_keys('%<{INS}') -- alt + <INSERT> - generate

  -- 8       <backspace>
  elseif (button == 8) then
    lmc_send_keys('%<{LEFT}') -- alt + <LEFT ARROW> - navigate back

  -- 104     <8>
  elseif (button == 104) then
    lmc_send_keys('^<%<m') -- ctrl + alt + M - extract method

  -- 105     <9>
  elseif (button == 105) then
    lmc_send_keys('^<%<c') -- ctrl + alt + C - Introduce constant

  -- 100     <4>
  elseif (button == 100) then
    lmc_send_keys('^<b') -- ctrl + B - declaration or usage

  -- 101     <5>
  elseif (button == 101) then
    lmc_send_keys('^+b') -- ctrl + shift + B - type declaration

  -- 102     <6>
  elseif (button == 102) then
    lmc_send_keys('^<%<b') -- ctrl + alt + B - implementations

  -- 97      <1>
  elseif (button == 97) then
    lmc_send_keys('{F7}') -- F7 - step into

  -- 98      <2>
  elseif (button == 98) then
    lmc_send_keys('{F8}') -- F8 - step over

  -- 99      <3>
  elseif (button == 99) then
    lmc_send_keys('+{F8}') -- shift + F8 - step outside

  -- 13      <enter>
  elseif (button == 13) then
    lmc_send_keys('{F9}') -- F9 - continue

  else
    print('Not yet assigned: ' .. button)
  end
end)

-- # With numlock #

--         <numlock>
-- 111     </>
-- 106     <*>
-- 8       <backspace>

-- 103     <7>
-- 104     <8>
-- 105     <9>
-- 109     <->

-- 100     <4>
-- 101     <5>
-- 102     <6>
-- 107     <+>

-- 97      <1>
-- 98      <2>
-- 99      <3>
-- 13      <enter>

-- 96      <0>
--         <000>
-- 110     <.>

-- # Without numlock #
--         <numlock>
-- 111     </>
-- 106     <*>
-- 8       <backspace>

-- 36      <home>
-- 38      <up arrow>
-- 33      <page up>
-- 144 109 144 <->

-- 37      <left arrow>
--         <5>
-- 39      <right arrow>
-- 107     <+>

-- 35      <end>
-- 40      <down arrow>
-- 34      <page down>
-- 13      <enter>

-- 45      <insert>
--         <000>
-- 46      <del>

-- https://github.com/me2d13/luamacros/wiki/List-of-Keys
