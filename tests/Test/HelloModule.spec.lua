local HelloModule = require(game.ReplicatedStorage.Modules:WaitForChild("HelloModule"))

return function()
	describe("HelloModule", function()
		it("greets correctly", function()
			local result = HelloModule.Greet("Wally")
			expect(result).to.equal("Hello, Wally!")
		end)
	end)
end
