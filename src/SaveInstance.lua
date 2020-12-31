local DICTIONARY_TEMPLATE: {
    ClassName: String,
    Properties: {},
    Children: {},
}
local Module: Dictionary = {}

function Module.CreateDictionary(object: Instance, properties: Dictionary, descendants: Dictionary): Dictionary
    assert(object, "Missing argument 1: object (instance)")

    local dictionary: DICTIONARY_TEMPLATE = {
        ClassName = object.ClassName,
        Properties = {},
        Descendants = descendants,
    }

    for _,propertyName: string in pairs(properties) do
        assert(object[propertyName], tostring(properties) .. " is not a valid property of " .. tostring(object.ClassName))
        dictionary.Properties[propertyName] = object[propertyName]
    end
    
    return dictionary
end

function Module.CreateInstance(dictionary: Dictionary): Instance
    assert(dictionary, "Missing argument 1: dictionary (dictionary)")
    assert(dictionary.ClassName, "Could not locate class name of object to be created in dictionary")

    local newInstance: Instance = Instance.new(dictionary.ClassName)
    for name: String, value: Any in pairs(dictionary.Properties) do
        assert(newInstance[name], tostring(name) .. " is not a valid property of " .. tostring(dictionary.ClassName))
        newInstance[name] = value
    end

    for _, descendant in pairs(dictionary.Descendants or {}) do
        local newDescendant = Module.CreateInstance(descendant)
        newDescendant.Parent = newInstance
    end

    return newInstance
end

return Module