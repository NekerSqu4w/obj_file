local obj_script = {}

obj_script.off_light = Color(0, 0, 0)
obj_script.red_light = Color(255, 0, 0)

obj_script.init = function(name, obj, bone, variable, genid)
end

obj_script.update = function(name, obj, bone, variable, genid)
    //name return current model name
    //obj return the current obj entity
    //bone return the bones entity
    //variable return local variable setup inside of updateVariable()
    //genid return an id between 1 and "count" parameter
	
	
	/* BACK_LIGHT */
    if name == "red_back_light" then
        obj:setColor(variable.brake and obj_script.red_light or obj_script.off_light)
    end
    /* */
end

return obj_script