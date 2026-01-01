--[=[
	@class NevertestService
]=]

local require = require(script.Parent.loader).load(script)

local ServiceBag = require("ServiceBag")

local NevertestService = {}
NevertestService.ServiceName = "NevertestService"

function NevertestService:Init(serviceBag: ServiceBag.ServiceBag)
	assert(not self._serviceBag, "Already initialized")
	self._serviceBag = assert(serviceBag, "No serviceBag")

	-- External
	self._serviceBag:GetService(require("CmdrService"))

	-- Internal
	self._serviceBag:GetService(require("NevertestTranslator"))
end

return NevertestService