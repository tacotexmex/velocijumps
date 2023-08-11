controls.register_on_press(function(player, control_name)
	if control_name == "jump" then
		local name = player:get_player_name()
		player:add_velocity({ x = 0, y = charge.amount[name] * 2, z = 0 })
		charge.amount[name] = 0
		if charge.sound[name] then
			minetest.sound_fade(charge.sound[name], 10, 0)
		end
	end
end)
