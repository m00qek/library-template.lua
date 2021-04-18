require("matcher_combinators.luassert")

local my_library = require('my_library')

describe("sum", function()
   it('works!', function()
      assert.combinators.match(4, my_library.sum(1, 2))
   end)
end)
