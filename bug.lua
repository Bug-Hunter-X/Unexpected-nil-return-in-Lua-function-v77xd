local function foo(a)
  if a == nil then return nil end
  return a + 1
end

local x = foo(nil)
print(x) -- Output: nil

local y = foo(5)
print(y) -- Output: 6

--The bug is that the function will return nil if it receives a nil value, which can lead to unexpected results if the function is called with a nil value and the result is not checked.
--Lua is a dynamically typed language, and nil is a special value that can represent the absence of a value. If a function is called with a nil value, it can return nil without raising any errors.  This can be easily missed.
