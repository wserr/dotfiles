Choices = { "json", "txt", "xml", "md" }

local function table_concat(t1, t2)
	for i = 1, #t2 do
		t1[#t1 + 1] = t2[i]
	end
	return t1
end

local function prompt()
	local numbered_choices = {}

	local index = 1
	for _, el in pairs(Choices) do
		table.insert(numbered_choices, index .. ". " .. el)
		index = index + 1
	end

	return vim.fn.inputlist(table_concat({ "Choose a file extension: " }, numbered_choices))
end

-- Opens a temp file with extension that you can choose
-- Temp file is saved in tmp folder
function OpenTempFile()
	local result = prompt()
	local choice = Choices[result]
	local file_name = "/tmp/" .. os.date("%Y%m%d_%H%M%S") .. "." .. choice
	local file = io.open(file_name, "w")
	if file ~= nil then
		file:close()
	end
	vim.cmd("vsplit " .. file_name)
end