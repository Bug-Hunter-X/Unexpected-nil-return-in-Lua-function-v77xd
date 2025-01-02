local function foo(a)
  if a == nil then error("Argument 'a' cannot be nil", 2) end -- Raise an error if 'a' is nil
  return a + 1
end

local x

-- Proper error handling
pcall(function() x = foo(nil) end, function(err) print("Error:", err) end) 

print(x) -- Output: nil (due to error)

local y = foo(5)
print(y) -- Output: 6

-- Alternative solution: Using assertions
local function foo2(a)
  assert(a ~= nil, "Argument 'a' cannot be nil")
  return a + 1
end

local z = foo2(10) -- No error
print(z) -- Output: 11

-- local w = foo2(nil) -- This will trigger an assertion error
-- print(w)