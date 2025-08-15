# robloxDev-template 🧱

# 💡 What This Template Does
This template provides a modern Roblox development workflow, making it easier to:

### ✍️ Write and edit code using Visual Studio Code

### 🔄 Sync code with Roblox Studio using Rojo

### 📦 Manage dependencies like Promise and TestEZ using Wally

### 🧪 Run unit tests in Studio using run-in-roblox

### ✅ Track changes, collaborate, and version control your game with Git & GitHub

## 🧱 Key Features

### Clean file-based layout that mirrors Roblox services

### Modular Lua code structure inside src/

### Built-in test runner with TestEZ

### Git-friendly: No .rbxlx conflicts

### Ready for CI/CD with test automation via CLI

### Ideal for solo developers, teams, or open-source Roblox projects

Start building Roblox games like a real software project. This template gives you professional tooling from day one. 🎯

Here's a clean, reliable, and **final version of `README.md`** — stripped of anything that didn’t work (❌ Aftman, ❌ Rokit), and aligned perfectly with your real-world, working setup using:

✅ `wally`
✅ `rojo`
✅ `run-in-roblox` (via `cargo`)
✅ Roblox Studio + Rojo syncing
✅ TestEZ + Promise via Wally

---

A professional Roblox development template with:

- 🧰 [Rojo](https://github.com/rojo-rbx/rojo): Sync Roblox Studio with your file system
- 📦 [Wally](https://github.com/UpliftGames/wally): Lua package manager for Roblox
- 🧪 [run-in-roblox](https://github.com/rojo-rbx/run-in-roblox): CLI tool for running tests inside Studio
- 🔬 [TestEZ](https://github.com/Roblox/testez): Unit testing framework
- 🤝 [Promise](https://github.com/evaera/promise): Promises for Roblox Lua

---

## 📁 Folder Structure

```

robloxDev-template/
├── src/
│   └── ReplicatedStorage/
│       ├── HelloModule.lua
│       └── tests/
│           └── HelloModule.spec.lua
├── tests/
│   ├── TestPlace.rbxlx
│   └── TestRunner.server.lua
├── Packages/                # Wally-installed packages (like TestEZ and Promise)
├── default.project.json     # Rojo sync config
├── wally.toml               # Wally package configuration
├── wally.lock               # Wally lockfile
└── README.md

````

---

## 🚀 Getting Started

### 1. Clone the repo

```bash
git clone https://github.com/YOUR_USERNAME/robloxDev-template.git
cd robloxDev-template
````

---

### 2. Install Dependencies

#### ✅ Install Rojo

* Download from: [https://github.com/rojo-rbx/rojo/releases](https://github.com/rojo-rbx/rojo/releases)
* Or via Homebrew:

```bash
brew install rojo-rbx/rojo/rojo
```

---

#### ✅ Install Wally

* Download from: [https://github.com/UpliftGames/wally/releases](https://github.com/UpliftGames/wally/releases)
* Or via Homebrew:

```bash
brew install wally
```

Then install your Lua dependencies:

```bash
wally install
```

This will create a `Packages/` folder with `TestEZ` and `Promise`.

---

### 3. Install `run-in-roblox`

#### ✅ Install Rust + Cargo

```bash
curl https://sh.rustup.rs -sSf | sh
. "$HOME/.cargo/env"
```

Then install the CLI tool:

```bash
cargo install run-in-roblox
```

---

## 🧪 Running Tests

Make sure you've saved your Roblox place at:

```
tests/TestPlace.rbxlx
```

Then run the tests from your terminal:

```bash
run-in-roblox --place tests/TestPlace.rbxlx --script tests/TestRunner.server.lua
```

You should see:

```
HelloModule
  ✓ greets correctly

1 success / 0 failures
✅ All tests passed.
```

---

## 🧠 Writing Tests

Use `TestEZ` format in your test files (e.g., `HelloModule.spec.lua`):

```lua
return function()
	local HelloModule = require(script.Parent.Parent.HelloModule)

	it("greets correctly", function()
		local message = HelloModule.greet("Alexei")
		expect(message).to.equal("Hello, Alexei!")
	end)
end
```

Then call it in `TestRunner.server.lua`:

```lua
local TestEZ = require(game.ReplicatedStorage.Packages.TestEZ)

TestEZ.TestBootstrap:run({
	game.ReplicatedStorage.tests
})
```

---

## 🧼 .gitignore Suggestion

```gitignore
*.rbxl
*.rbxlx
*.rblx
Packages/
wally.lock
```

---

## 📜 License

MIT License © 2025 \[Alexei Dias]

```

