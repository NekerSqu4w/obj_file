local obj_script = {}

obj_script.off_light = Color(0, 0, 0)
obj_script.on_light = Color(255, 255, 255)
obj_script.red_light = Color(255, 0, 0)
obj_script.off_red_light = Color(150, 150, 150)
obj_script.reverse_off_light = Color(150, 150, 150)
obj_script.reverse_light = Color(255, 255, 255)

obj_script.init = function(name, obj, bone, variable, genid)
end

obj_script.update = function(name, obj, bone, variable, genid)
    //name return current model name
    //obj return the current obj entity
    //bone return the bones entity
    //variable return local variable setup inside of updateVariable()
    //genid return an id between 1 and "count" parameter
	
	
	/* BACK_LIGHT */
    if name == "brake_light" then
        obj:setColor(variable.brake > 0 and obj_script.red_light or obj_script.off_red_light)
    end
    /* */
	
	/* TAIL_LIGHT */
    if name == "tail_light" then
        obj:setColor(variable.headlight > 0 and obj_script.red_light or obj_script.off_red_light)
    end
    /* */
	
	/* HEADLIGHT */
    if name == "healight" then
        obj:setColor(variable.headlight > 0 and obj_script.on_light or obj_script.off_light)
    end
    /* */
	
	/* REVERSE_LIGHT */
    if name == "reverse_light" then
        obj:setColor(variable.reverse > 0 and obj_script.reverse_light or obj_script.reverse_off_light)
    end
    /* */
end

return obj_script