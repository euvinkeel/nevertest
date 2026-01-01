--[[
	@class ServerMain
]]
local ServerScriptService = game:GetService("ServerScriptService")

local loader = ServerScriptService.Nevertest:FindFirstChild("LoaderUtils", true).Parent
local require = require(loader).bootstrapGame(ServerScriptService.Nevertest)

local serviceBag = require("ServiceBag").new()
serviceBag:GetService(require("NevertestService"))
serviceBag:Init()
serviceBag:Start()