--[=[
	@class SomeService
]=]

local require = require(script.Parent.loader).load(script)

local ServiceBag = require("ServiceBag")

local SomeService = {}
SomeService.ServiceName = "SomeService"

function SomeService:Init(serviceBag: ServiceBag.ServiceBag)
	assert(not self.serviceBag, "already has a service bag")
	self._serviceBag = serviceBag

	self._cmdrServiceClient = self._serviceBag:GetService(require("CmdrServiceClient"))
	self._message = "msg: ___"

	print(self._cmdrServiceClient)
	print(self._serviceBag)
end

function SomeService:Start()
	print("Started SomeService")
end

function SomeService:Print()
	print(self._message)
	return self._message
end
function SomeService:Set(message: string)
	self._message = message
end

return SomeService
