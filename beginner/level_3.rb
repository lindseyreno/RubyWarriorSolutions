class Player
  def play_turn(warrior)
   if warrior.feel.empty?
     unless warrior.health == 20
     warrior.rest!
     else
     warrior.walk!
     end
   else
    warrior.attack!
   end
  end
end
