# Lua Unexpected nil Return Bug

This repository demonstrates a common, yet easily overlooked, bug in Lua: unexpected `nil` returns from functions without explicit error handling.  The `bug.lua` file contains a simple function that can return `nil`, potentially leading to runtime issues if the calling code doesn't check for this possibility.  The `bugSolution.lua` file shows how to address the problem with proper error handling.

## Bug Description

The function `foo` returns `nil` if its argument is `nil`. This behavior is not inherently wrong, but if the calling code doesn't explicitly check for this case, it might lead to unexpected behavior or errors. For example, attempting to perform arithmetic operations on `nil` can cause crashes or unexpected results. 

## Solution

The solution involves adding explicit checks for `nil` in the calling code or using assertions and robust error management within the function itself.