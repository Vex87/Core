return function(name)
	local library = script:FindFirstChild(name)
	assert(library, name .. " library does not exist.")
	return require(library)
end