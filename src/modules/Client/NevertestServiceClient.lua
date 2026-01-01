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
	print("NEVERTESTCLINET: HIIII LOL")

	-- External
	self._serviceBag:GetService(require("CmdrServiceClient"))

	-- Internal
	self._serviceBag:GetService(require("NevertestTranslator"))
	self._serviceBag:GetService(require("SomeService")):Set("msg: 000")

	self._ragdollService = self._serviceBag:GetService(require("RagdollService"))
end

function NevertestServiceClient:Start()
	ServiceBag.GetService(self._serviceBag, require("SomeService")):Print()
	self._serviceBag:GetService(require("SomeService")):Set("msg: 111")
	self._serviceBag:GetService(require("SomeService")):Print()
end

return NevertestServiceClient
