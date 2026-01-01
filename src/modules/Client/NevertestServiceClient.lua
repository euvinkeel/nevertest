--[=[
	@class NevertestServiceClient
]=]

local require = require(script.Parent.loader).load(script)

local ServiceBag = require("ServiceBag")

local NevertestServiceClient = {}
NevertestServiceClient.ServiceName = "NevertestServiceClient"

function NevertestServiceClient:Init(serviceBag: ServiceBag.ServiceBag)
	assert(not self._serviceBag, "Already initialized")
	self._serviceBag = assert(serviceBag, "No serviceBag")

	-- External
	self._serviceBag:GetService(require("CmdrServiceClient"))

	-- Internal
	self._serviceBag:GetService(require("NevertestTranslator"))
end

return NevertestServiceClient