QuestInfoList_Custom = {}
QuestInfoList_Custom = {
--[[ Quest Info Format:
	[<ID>] = {
		Title = "",
		Description = {
			""
		},
		Summary = "", -- If you don't need any arguments below, remove the , in this line
		-- Optional values:
		NpcSpr = "<NPC_Sprite>",
		NpcNavi = "<MapName>",
		RewardEXP = "0",
		RewardJEXP = "0",
		NpcPosX = 0,
		NpcPosY = 0,
		RewardItemList = {
			{ ItemID = 0, ItemNum = 1 },
			{ ItemID = 0, ItemNum = 1 },
			{ ItemID = 0, ItemNum = 1 }
		}
		-- End of Quest Info
	},
]]
	[2] = {
		Title = "Custom OnGoing Quests Test",
		Description = {
			"Blub"
		},
		Summary = "Does it work?"
	},
}