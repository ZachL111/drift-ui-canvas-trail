package.path = "src/?.lua;" .. package.path
local policy = require("policy")

local signal_case_1 = { demand = 69, capacity = 104, latency = 11, risk = 23, weight = 4 }
assert(policy.score(signal_case_1) == 125)
assert(policy.classify(signal_case_1) == "review")
local signal_case_2 = { demand = 73, capacity = 79, latency = 15, risk = 10, weight = 13 }
assert(policy.score(signal_case_2) == 210)
assert(policy.classify(signal_case_2) == "accept")
local signal_case_3 = { demand = 105, capacity = 105, latency = 20, risk = 25, weight = 6 }
assert(policy.score(signal_case_3) == 180)
assert(policy.classify(signal_case_3) == "accept")
