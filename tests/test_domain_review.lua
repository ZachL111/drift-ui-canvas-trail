package.path = "src/?.lua;" .. package.path
local review = require("domain_review")

local item = { signal = 78, slack = 46, drag = 23, confidence = 93 }
assert(review.score(item) == 226)
assert(review.lane(item) == "ship")
