local work = getfenv().game
local _nil = Instance.new("HopperBin", nil)
if work:FindFirstChildOfClass("CoreGui") then
	local CoreGui = work:FindFirstChildOfClass("CoreGui")
	work:FindFirstChildOfClass("CoreGui") do
		for _, a in ipairs(work.Workspace.Parent:GetDescendants()) do
			for _, b in ipairs(a.Parent:GetChildren()) do
				if b then
					b = _nil
					for i, v in ipairs(_nil:GetChildren()) do
						print(v.ClassName)
					end
				end
				print(b.ClassName)
			end
		end
	end
	_G.Core = CoreGui
	task.spawn(function()
		task.wait(.01)
		if _G.Core:FindFirstChild("InitalPadding", true) then
			return
		end
	end)
	_G.Core = script
end
