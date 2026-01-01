--[[
	@class NevertestTranslator
]]

local require = require(script.Parent.loader).load(script)

return require("JSONTranslator").new("NevertestTranslator", "en", {
	gameName = "Nevertest";
})