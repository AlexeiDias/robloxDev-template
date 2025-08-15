# robloxDev-template 🚀

## ✅ 1. `.gitignore`

This ensures Git ignores Roblox binary files, Wally packages, and temp files.

📄 **`.gitignore`** (put at the root of your repo)

```gitignore
# Roblox Studio files
*.rbxl
*.rbxlx
*.rbxm
*.rbxmx
*.rbxl-bin
*.rbxm-bin

# Temp & logs
*.log
*.tmp
*.bak

# OS files
.DS_Store
Thumbs.db

# Wally packages
Packages/
```

---

## ✅ 2. `README.md`

This is the landing file for your GitHub repo. Feel free to tweak the name, link, or versioning.

📄 **`README.md`**

````markdown
# robloxDev-template 🚀

A Roblox development starter template powered by:

- ✅ [Rojo](https://rojo.space/) for real-time code syncing
- ✅ [Aftman](https://github.com/LPGhatguy/aftman) for toolchain management
- ✅ [Wally](https://wally.run) for open-source package dependencies
- ✅ [GitHub](https://github.com) for version control

## 🛠️ Tools

Install [Aftman](https://github.com/LPGhatguy/aftman) and then run:

```bash
aftman install
rojo serve
````

## 🧱 Project Structure

```
src/
├── ReplicatedStorage/
│   └── HelloModule.lua
├── ServerScriptService/
```

## 📦 Wally

To install Wally dependencies:

```bash
wally install
```

> Packages will be downloaded to `Packages/`

## 🚀 Getting Started

1. Clone the repo
2. Run `aftman install`
3. Run `rojo serve`
4. Attach from Studio or run your place file
5. Build cool stuff!

````

---

## ✅ 3. `src/ReplicatedStorage/HelloModule.lua`

This is a simple test module to verify Rojo syncing and `require()` logic.

📄 **`src/ReplicatedStorage/HelloModule.lua`**

```lua
local HelloModule = {}

function HelloModule.Greet(name)
	return "Hello, " .. name .. "!"
end

return HelloModule
````

---

## ✅ 4. `wally.toml`

This defines your Wally package and any dependencies (like `Promise` or `Fusion`).

📄 **`wally.toml`** (root of the repo)

```toml
[package]
name = "yourname/robloxDevTemplate"
version = "0.1.0"
realm = "shared"

[dependencies]
Promise = "evaera/promise@4.0.0"
```

> Replace `"yourname"` with your actual GitHub or Roblox username.

Then run:

```bash
wally install
```

Wally will generate a `Packages/` folder (don’t forget it’s ignored via `.gitignore`!).

---

## ✅ All Files Are Ready!

You now have:

```
robloxDev-template/
├── .gitignore
├── README.md
├── aftman.toml
├── default.project.json
├── wally.toml
├── src/
│   ├── ReplicatedStorage/
│   │   └── HelloModule.lua
│   └── ServerScriptService/
```

---

## ✅ Next Steps

1. Add all files:

```bash
git add .
git commit -m "Initial template with Rojo, Aftman, Wally, HelloModule"
git push origin main
```

2. Optionally:

   * Add a license (`MIT` is common for dev templates)
   * Mark the repo as a **template** on GitHub (under repo settings → check "Template repository")