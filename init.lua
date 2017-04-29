
-- Just reciepe to create appletree sapling
-- Maybe it was too expensive...

minetest.register_craft({
	output = "default:sapling",
	recipe = {
		{"", "", ""},
		{"", "default:apple", ""},
		{"", "default:dirt", ""},
	},
})

-- sometimes randomly give out different sapling
minetest.register_on_craft(
    function(itemstack, player, old_craft_grid, craft_inv)

        if itemstack and itemstack:get_name() == "default:sapling" then
            local lottery = math.random(1, 245)
            if lottery == 241 then
                return ItemStack('default:pine_sapling')
            elseif lottery == 242 then
                return ItemStack('default:acacia_sapling')
            elseif lottery == 243 then
                return ItemStack('default:aspen_sapling')
            elseif lottery == 244 then
                return ItemStack('default:bush_sapling')
            elseif lottery == 245 then
                return ItemStack('default:acacia_bush_sapling')
            elseif lottery > 200 then
                return ItemStack('default:junglesapling')
            end
        end
        return nil  --do not change craft
    end
)
