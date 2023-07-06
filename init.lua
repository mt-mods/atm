-- Copyright (c) 2016, 2017, 2018 Gabriel Pérez-Cerezo, licensed under WTFPL.
-- Wire Transfers (c) 2018 Hans von Smacker
-- Large ATMs (C) 2017 Hans von Smacker

atm = {
    balance = {},
    startbalance = minetest.settings:get("atm.startbalance") or 30,
    pending_transfers = {},
    completed_transactions = {},
    pth = minetest.get_worldpath().."/atm_accounts",
    pth_wt = minetest.get_worldpath().."/atm_wt_transactions",
    S = minetest.get_translator("atm")
}

local modpath = minetest.get_modpath("atm")

dofile(modpath .. "/common.lua")
dofile(modpath .. "/forms.lua")
dofile(modpath .. "/nodes.lua")
dofile(modpath .. "/receive_fields.lua")
dofile(modpath .. "/receive_fields_wt.lua")
dofile(modpath .. "/crafts.lua")

if minetest.settings:get_bool("atm.income_enabled") then
    dofile(modpath .. "/interest.lua")
end

print('[atm] loaded')

