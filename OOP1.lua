--[[Hero={attack=100}
function Hero:skill(addAttack)
	self.atack=self.attack+addAttack
end
oneHero=Hero;
--Hero=nil
oneHero:skill(30)
--print(oneHero.attack)
for k,v in pairs(oneHero) do
	print(k,v)
end]]
--第二种方式
--[[Hero={attack=100}
function Hero:skill( addAttack )
	self.attack=self.attack+addAttack
end
oneHero=Hero
Hero=nil
oneHero:skill(30)
print(oneHero.attack)]]

--第三种方式

--修改了东东动动
Hero={}
function Hero:new(o)
	o=o or {}
	setmetatable(o,self)
	self.__index=self
	return o
end

function Hero:skill(addAttack)
	self.attack=self.attack+addAttack
end

oneHero=Hero:new({attack=90})
oneHero:skill(10)
print(oneHero.attack)






