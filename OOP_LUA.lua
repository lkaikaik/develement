--[[ Hero = {attack = 100}    
 function Hero.skill(addAttack) 
     Hero.attack = Hero.attack + addAttack 
 end 
   
 Hero.skill(20) 
 print(Hero.attack)
for k,v in pairs(Hero) do
	print(k,v)
end]]
 --[[Hero.skill=function function_name( ... )
 	-- body
 end]]
 --[[ Hero = {attack = 100} 
 function Hero:skill(addAttack) 
    self.attack = self.attack + addAttack 
 end 
   
 oneHero = Hero; 
 Hero = nil 
 --oneHero:skill(30)
 oneHero.skill(oneHero,30) 
 print(oneHero.attack) --> 130]]
 Hero = {} 
 function Hero:new(o) 
 o = o or {} 
 setmetatable(o,self) 
 self.__index = self 
 return o 
 end 
   
 function Hero:skill(addAttack) 
 self.attack = self.attack + addAttack 
 end 
   
 oneHero = Hero:new{}
 oneHero:skill(10) 
 print(oneHero.attack) -->100


