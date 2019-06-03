require("class")
BehaviorTree = require("BehaviorTree")

math.randomseed(os.time());
math.random()
math.random()
math.random()


local Player = {}

function Player:hasMoney()
	local r = math.random(0, 1)
	if r == 0 then
		print("有钱")
		return true
	else
		print("没钱")
		return false
	end
end

function Player:byCar(arg1, arg2)
	print("买车", "花费" .. arg1, arg2)
	return true
end

function Player:watchMovie(arg)
	print("看电影", "花费" .. arg)
	return true
end

function Player:doWork()
	print("上班去")
	
	local data = require("bt.work_export")

	local newtree = BehaviorTree:new()

	-- 必须在doPauseUntil之前赋值
	self.workTree = newtree

	newtree:execute(data, self, true)

	self.btTree:doPauseUntil(function(delta)
		newtree:update(delta)
		return newtree:isFinish()
	end)
	return true
end

function Player:goHome()
	print("回家啦")
	return true
end

-- 下班了吗？
function Player:isoffWork(workCount)
	workCount = tonumber(workCount)
	local r = self.count ~= nil and self.count > workCount

	if r then
		print("可以下班了")
	else
		print("还没下班")
	end

	return r
end

function Player:goOffWork()
	print("下班啦")
	if self.workTree then
		-- 退出work子树
		self.workTree:doBreak()
	end
	return true
end

function Player:working()
	self.count = self.count or 0
	self.count = self.count + 1
	print("工作中。。。", self.count)
	return true
end



local data = require("bt.example_export")

local bt = BehaviorTree.new()

Player.btTree = bt

print("**********begin**********")

bt:execute(data, Player, false, function()
	print("**********end**********")
end)

for i=1,100 do
	-- print("update", i)
	bt:update(1)
end

