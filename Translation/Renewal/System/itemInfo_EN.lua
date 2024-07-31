-- Original translation works of zackdreaver: https://github.com/zackdreaver/ROenglishRE
-- Continuated by llchrisll at https://github.com/llchrisll/ROenglishRE
-- This file can be distributed, used and modified freely
-- This file shouldn't be claimed as part of your project, unless you fork it from https://github.com/llchrisll/ROenglishRE
-- Credits to Neo-Mind for original code.
-- For further information, please visit https://llchrisll.github.io/ROTPDocs/guides/customs/#multi-iteminfo-support.

-- Load the splited function file
require("System/LuaFiles514/itemInfo_f")

-- Load the translation file
dofile("System/LuaFiles514/itemInfo.lua")

-- Load the additional files
-- Example: (Yes you could add kRO itemInfo itself, but prepare for lua errors)
--dofile("System/itemInfo_true.lub")

-- Additional Configs
-- Display origin server based on translation file's Server argument
-- 0 = disable/1 = in Item Name/2 = top of description/3 = bottom of description
DisplayOrigin = 1

-- Defines how the item id will be shown in item name, doesn't take effect in other settings
TagStart = '['
TagEnd = ']'

-- Server Name for your custom items
ServerName = 'ExampleRO'

-- Define the colour in which the Server Name should be shown (affects official)
-- Format: '^<RRGGBB>'
-- '' = same color as "Server: " (^0000CC = blue)
-- '^FFFFFF' = white
ServerColour = '^FF0000'

-- Define the colour in which the custom Server Name should be shown (custom items)
-- Format: '^<RRGGBB>'
-- '' = same color as "Server: " (^0000CC = blue)
-- '^FFFFFF' = white
CServerColour = '^00FF00'

-- Show ItemID at bottom
-- 0 = disable/1 = top of description/2 = bottom of description
DisplayItemID = 2

-- Display a database link at bottom of description (true/false)
-- The item id will be automically parsed at the end of 'DbUrl',
-- example: 'https://www.divine-pride.net/database/item/512'
DisplayDatabase = true
DbURL = 'https://www.divine-pride.net/database/item/'
DbDisplay = 'Divine-Pride.net'

-- Database link for custom items, like fluxcp
-- The item id will be automically parsed at the end of 'CustomDbUrl',
-- example: 'http://127.0.0.1/?module=item&action=view&id=512'
CustomDbUrl = 'http://127.0.0.1/?module=item&action=view&id='
CustomDbDisplay = 'Database'

-- Table for Custom Items
tbl_custom = {
	--[[ Template
	[ID] = {
		unidentifiedDisplayName = "Unknown Item",
		unidentifiedResourceName = "",
		unidentifiedDescriptionName = { "" },
		identifiedDisplayName = "Item",
		identifiedResourceName = "",
		identifiedDescriptionName = {
			"Line 1",
			"Line 2"
		},
		slotCount = 0,
		ClassNum = 0,
		costume = false
	},
	]]
}

-- Table for Official Overrides
tbl_override = {
	--[[ Template
	[ID] = {
		unidentifiedDisplayName = "Unknown Item",
		unidentifiedResourceName = "",
		unidentifiedDescriptionName = { "" },
		identifiedDisplayName = "Item",
		identifiedResourceName = "",
		identifiedDescriptionName = {
			"Line 1",
			"Line 2"
		},
		slotCount = 0,
		ClassNum = 0,
		costume = false
	},
	]]
}

function itemInfoMerge(src, state)
	if src == nil then
		return
	end
	for ItemID,DESC in pairs(src) do
		if state == false then
			if not tbl[ItemID] then
				tbl[ItemID] = {}
				tbl[ItemID] = DESC
			end
		else
			tbl[ItemID] = DESC
		end
		if src == tbl_custom then
			if ServerName ~= nil and tbl[ItemID].Server == nil then
				tbl[ItemID].Server = ServerName
			end
			if DisplayDatabase == true then
				tbl[ItemID].CustomDB = true
			end
		end
	end
	return
end

-- itemInfoMerge(src, state)
-- @src = table for merge into tbl
-- @state = overwrite existing entries (true) or not (false)

itemInfoMerge(tbl_override, true) -- official overrides
itemInfoMerge(tbl_custom, false) -- custom items
--itemInfoMerge(tbl, false) -- original kRO iteminfo
