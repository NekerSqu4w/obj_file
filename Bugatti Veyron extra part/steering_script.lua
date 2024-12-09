local obj_script = {}

obj_script.init = function(name, obj, bone, variable, genid)
end

obj_script.update = function(name, obj, bone, variable, genid)
    //name return current model name
    //obj return the current obj entity
    //bone return the bones entity
    //variable return local variable setup inside of updateVariable()
    //genid return an id between 1 and "count" parameter
	
	local rotation_angle = (variable.smoothsteeringAng / 20) * 350
	local valid_obj = name == "steering_chrome" or name == "steering_color" or name == "steering_color2" or name == "steering_seam"
	
    if valid_obj then
		obj:setAngles(bone:localToWorldAngles(Angle(-rotation_angle,0,0)))
    end
end

return obj_script