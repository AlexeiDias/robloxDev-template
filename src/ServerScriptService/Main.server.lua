local HelloModule = require(game.ReplicatedStorage.Modules:WaitForChild("HelloModule"))
local Promise = require(game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Promise"))

print(HelloModule.Greet("Developer"))

Promise.new(function(resolve)
    task.wait(1)
    resolve("✅ Promise resolved after 1 second")
end):andThen(print)
