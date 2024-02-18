local script = {}

script.init = function(name, obj, bone, variable, genid)

    if variable.wheels and variable.wheels[genid] then
        local wheels_parent = entity(variable.wheels[genid])
        
        if wheels_parent:isValid() then
            obj:setParent(wheels_parent)
            obj:setPos(wheels_parent:localToWorld(Vector(0,0,0)))
            obj:setAngles(wheels_parent:localToWorldAngles(Angle(0,180,0)))
        end
    end

end

script.update = function(name, obj, bone, variable, genid)
    //name return current model name 'in this case it's 'RPMneedle' or 'KMHneedle''
    //obj return the current obj entity
    //bone return the bones entity
    //variable return local variable setup inside of updateVariable()
    //genid return an id between 1 and "count" parameter

    /* STEERING */
    if name == "steering_wheel" then
        obj:setAngles(bone:localToWorldAngles(Angle((variable.smoothsteeringAng / 20) * 350,0,0)))
    end
    /* */

    /* PEDAL CONTROL */
    if name == "ThrottlePedal" then
        obj:setAngles(bone:localToWorldAngles(Angle(0,0,variable.throttle * 15)))
    end
    if name == "BrakePedal" then
        obj:setAngles(bone:localToWorldAngles(Angle(0,0,variable.brake * 15)))
    end
    if name == "ClutchPedal" then
        obj:setAngles(bone:localToWorldAngles(Angle(0,0,variable.clutch * 15)))
    end
    /* */

    /* NEEDLE */
    if name == "RPMneedle" then
        obj:setAngles(bone:localToWorldAngles(Angle(variable.rpmAngle,0,0)))
    end
    if name == "KMHneedle" then
        obj:setAngles(bone:localToWorldAngles(Angle(variable.kmhAngle,0,0)))
    end
    /* */
end

return script