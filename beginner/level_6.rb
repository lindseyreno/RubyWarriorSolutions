class Player
  def play_turn(warrior)
    if @health == nil
      @health = warrior.health 
    end

    if @health > warrior.health
      if warrior.feel(:backward).captive? == false
        warrior.walk!(:backward)
        if warrior.feel(:backward).wall?
          warrior.walk!
        else
          warrior.walk!(:backward)
        end
      else
        warrior.rescue!
      end

     if warrior.feel.enemy?
       warrior.attack!
     else
       warrior.walk!
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
