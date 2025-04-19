type Pair<T, U> = {
	first: T,
	second: U,
	getFirst: (self: Pair<T, U>) -> T,
	getSecond: (self: Pair<T, U>) -> U,
	toTuple: (self: Pair<T, U>) -> (T, U),
	equals: (self: Pair<T, U>, other: Pair<T, U>) -> boolean,
	swap: (self: Pair<T, U>) -> Pair<U, T>,
}

local Pair = {}
Pair.__index = Pair

function Pair.new<T, U>(first: T, second: U): Pair<T, U>
	local self = setmetatable({}, Pair) :: Pair<T, U>
	self.first = first
	self.second = second
	return self
end

function Pair:getFirst()
	return self.first
end

function Pair:getSecond()
	return self.second
end

function Pair:toTuple()
	return self.first, self.second
end

function Pair:equals(other)
	return self.first == other.first and self.second == other.second
end

function Pair:swap()
	return Pair.new(self.second, self.first)
end

return Pair
