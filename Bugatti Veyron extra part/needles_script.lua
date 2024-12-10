local obj_script = {}

obj_script.off = Color(120, 40, 40)
obj_script.on = Color(255, 40, 40)

obj_script.init = function(name, obj, bone, variable, genid)
end

obj_script.update = function(name, obj, bone, variable, genid)
    //name return current model name
    //obj return the current obj entity
    //bone return the bones entity
    //variable return local variable setup inside of updateVariable()
    //genid return an id between 1 and "count" parameter
	
	
    if name == "hour_needle" then
		obj:setAngles(bone:localToWorldAngles(Angle(variable.hour_ang,0,0)))
    end
    if name == "hour_needle_red_part" then
		obj:setAngles(bone:localToWorldAngles(Angle(variable.hour_ang,0,0)))
        obj:setColor(variable.headlight > 0 and obj_script.on or obj_script.off)
    end
	
    if name == "minute_needle" then
		obj:setAngles(bone:localToWorldAngles(Angle(variable.minute_ang,0,0)))
    end
    if name == "minute_needle_red_part" then
		obj:setAngles(bone:localToWorldAngles(Angle(variable.minute_ang,0,0)))
        obj:setColor(variable.headlight > 0 and obj_script.on or obj_script.off)
    end
end

return obj_script