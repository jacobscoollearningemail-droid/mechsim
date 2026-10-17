local UserInputService = game:GetService("UserInputService")
local Runservice = game:GetService("RunService")

local mouseFree = false

UserInputService.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.E then 
	    mouseFree = true
		UserInputService.MouseIconEnabled =true
		
		
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.E then 
		 mouseFree = false
		 UserInputService.MouseBehavior = Enum. MouseBehavior.LockCenter
		UserInputService.MouseIconEnabled = false
	end
end)

Runservice.RenderStepped:Connect(function(input)
	if mouseFree == true then 
		UserInputService.MouseBehavior = Enum.MouseBehavior.Default
	end
end)