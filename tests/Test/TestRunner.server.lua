local TestEZ = require(game.ReplicatedStorage.Packages.TestEZ)

local results = TestEZ.TestBootstrap:run({
	script.Parent.Test
}, TestEZ.Reporters.TextReporter)

if results.failureCount > 0 then
	error("❌ Tests failed!")
else
	print("✅ All tests passed.")
end
