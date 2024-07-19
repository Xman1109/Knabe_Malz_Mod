data:extend({
    {
        type = "capsule",
        name = "knabe-malz",
        icon = "__Knabe_Malz_Mod__/graphics/item.png",
        icon_size = 256,
        icon_mipmaps = 4,
        stack_size = 50,
        subgroup = "raw-resource",
        capsule_action = {
            stack_size = 50,
            order = "h[knabe-malz]",
            type = "use-on-self",
            attack_parameters = {
                type = "projectile",
                ammo_category = "capsule",
                cooldown = 300,
                range = 0,
                ammo_type = {
                    category = "capsule",
                    target_type = "position",
                    action = {
                        type = "direct",
                        action_delivery = {
                            type = "instant",
                            target_effects = {
                                {
                                    type = "damage",
                                    damage = { type = "physical", amount = -300 },
                                },
                                {
                                    type = "play-sound",
                                    sound = {
                                        {
                                            filename = "__Knabe_Malz_Mod__/sound/malz.ogg",
                                            volume = 2
                                        }
                                    }
                                },
                            },
                        },
                    },
                },
            },
        }
    },



    {
        type = "recipe",
        name = "knabe-malz",
        category = "chemistry",
        energy_required = 1,
        enabled = false,
        ingredients =
        {
            { type = "fluid", name = "light-oil", amount = 20 },
            { type = "fluid", name = "water",     amount = 20 },
            { type = "item",  name = "raw-fish",  amount = 5 }
        },
        results =
        {
            { type = "item", name = "knabe-malz", amount = 6 }
        },
        crafting_machine_tint =
        {
            primary = { r = 0.268, g = 0.723, b = 0.223, a = 1.000 }, -- #44b838ff
            secondary = { r = 0.432, g = 0.793, b = 0.386, a = 1.000 }, -- #6eca62ff
            tertiary = { r = 0.647, g = 0.471, b = 0.396, a = 1.000 }, -- #a57865ff
            quaternary = { r = 1.000, g = 0.395, b = 0.127, a = 1.000 }, -- #ff6420ff
        }
    },



    {
        type = "technology",
        name = "knabe-malz",
        icon_size = 256,
        icon_mipmaps = 4,
        icon = "__Knabe_Malz_Mod__/graphics/tech.png",
        prerequisites = { "oil-processing" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "knabe-malz"
            }
        },
        unit =
        {
            count = 250,
            ingredients = { { "automation-science-pack", 1 }, { "logistic-science-pack", 1 } },
            time = 30
        },
        order = "d-a"
    }
})
