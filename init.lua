
-- Just reciepe to create starter sapling
-- bush sapling, as of minetest 4.15 version

minetest.register_craft({
	output = "default:bush_sapling",
	recipe = {
		{"", "", ""},
		{"", "default:apple", ""},
		{"", "default:dirt", ""},
	},
})

-- sometimes randomly give out different sapling
minetest.register_on_craft(
    function(itemstack, player, old_craft_grid, craft_inv)

        if itemstack and itemstack:get_name() == "default:bush_sapling" then
            local lottery = math.random(1, 245)
            if lottery == 241 then
                return ItemStack('default:pine_sapling')
            elseif lottery == 242 then
                return ItemStack('default:acacia_sapling')
            elseif lottery == 243 then
                return ItemStack('default:aspen_sapling')
            elseif lottery == 244 then
                return ItemStack('default:acacia_bush_sapling')
            elseif lottery > 200 then
                return ItemStack('default:sapling')
            elseif lottery > 170 then
                return ItemStack('default:junglesapling')
            end
        end
        return nil  --do not change craft
    end
)
