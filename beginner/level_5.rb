class Player
  def play_turn(warrior)
    if @health == nil
      @health = warrior.health
    end
 
    if @health > warrior.health
     if warrior.feel.empty?
       warrior.walk!
     else
       warrior.attack!
     end
    else @health == warrior.health
     if warrior.feel.empty? && warrior.health < 20
       warrior.rest!
     elsif warrior.feel.empty? == false
       if warrior.feel.captive?
         warrior.rescue!
       else
         warrior.attack!
       end
     else
       warrior.walk!
     end
   end
    @health = warrior.health
  end
end
