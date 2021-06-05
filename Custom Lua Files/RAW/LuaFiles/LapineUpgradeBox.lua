tblLapineUpgradeBox_Custom = {
	targets = {
		--[[ Note: Following comments might be not correct!
		CustomUpgradeBox = { -- Item Name in Database or just in lua file
			ItemID -- Item ID of Box
			NeedRefineMin -- Required minimum Refine Level of each
			NeedRefineMax -- Required maximum Refine Level of each
			NeedOptionNumMin = 0, -- Required amount of Random Options
			NotSocketEnchantItem = false, -- Needs to be enchanted or not
			TargetItems = { -- List of possible items
				{ "Either File Name, Item DB Entry or just a item name for overview", <Item ID> }
			},
			NeedSource_String -- "Text Display of possible items"
		}
		]]
		CustomUpgradeBox = {
			ItemID = 360001,
			NeedRefineMin = 7,
			NeedRefineMax = 10,
			NeedOptionNumMin = 0,
			NotSocketEnchantItem = false,
			TargetItems = {
				{ "SimpleItemDisplay", 35000 }
			},
			NeedSource_String = "Test Text"
		}
	}
}
