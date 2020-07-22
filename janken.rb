
require "byebug"
# Write the logic to let the player (self) input "0 ~ 2".
class  Player
  def  hand
      # Display “Sentence that allows the player to enter 0 to 2”.
    puts " Please enter a number. "
    puts " 0: goo, 1: joki, 2: par "
      # Get the value entered by the player in the variable "input_hand" and assign it.
      # Tip! Use the "gets method".
    input_hand = gets.to_i
      # If "input_hand" (obtained value) is either "0, 1, 2", exit from while, otherwise repeat from the beginning.
        # Hint! Use "while" and "if".
        # Let's implement according to the example of the following types * Be careful to comment out when implementing while true
      while true
        # if Write a condition ("input_hand" (acquired value) is "0, 1, 2" In that case)
        if input_hand == 0 ||  1 ||  2
          # "input_hand" (acquired value) is returned as is
            # Tips! Use "return".
          return input_hand
        # else * In cases other than the conditions
        else
          # Display the "text that allows the player to enter 0 to 2".
          puts "Please enter the number again."
          puts "0: goo, 1: joki, 2: par"
          # Get the variable input by the player and assign it to the variable "input_hand".
          input_hand = gets.to_i
        # end if statement
      end
      # end while statement
    end
    # end def statement
  end
  #end class statement
end

# Write the logic that the enemy randomly generates a value of "0 ~ 2".
class  Enemy
  def  hand
    # Randomly output the values ​​of goo, joki and par. use rand
    random_hand = rand(3).to_1
    # can also use the code below
    #rand  ( 0..2 )
    # since value for goo=1 joki=1 par=2
    # end def statement
  end
  # end class statement
end

# Write logic that causes the player (yourself) to input "0 ~ 2" and "0 ~ 2" randomly generated by the enemy, and output the result on the console.
class  Janken
  def  pon (player_hand, enemy_hand)
     # Assign [[guo], [joki], [par]] to the variable "janken".
    janken = [ " goo " , " joki ", "par"]
     # Let's output "The opponent's hand is the value {generated by the enemy}."
      puts "The opponent's hand is #{janken[enemy_hand]}."
    # Create a scissor logic from the return value of the Player class and the return value of the Enemy class.
      # Let's implement according to the example of the following types * Be careful to comment out when implementing
      # if the return value (player_hand) of the Player class and the return value (enemy_hand) of the Enemy class are the same
    if player_hand == enemy_hand
        #, "Aiko" is output.
        puts "Aiko"
      # Returns "true" to make the rock-paper-scissors run repeatedly.
        #Tips! Use "return".
    return true
    # elsif If the following combination
    elsif
      # conditions
      (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
      # Outputs "You win".
      puts "you win"
    # Ends while while returning "false" to end the rock-paper-scissors game.
    # else *In the case other than the condition,
    else
      # Outputs "you lose".
      puts "You lose"
    # Ends while while returning "false" to end the rock-paper-scissors game.
    return false
    # end if statement
    end
    # end def statement
  end
  # end class statement
end
# Assign the instantiated Player to the variable "player".
player = Player.new
 # Substitute the instantiation of Enemy for the variable "enemy".
enemy = Enemy.new
 # Substitute an instantiation of Janken for the variable "janken".
janken = Janken.new
 # Assign "true" to the variable "next_game". * Unless the "next_game" is set to "false", the processing will be executed repeatedly with "forever".
next_game = true
# Let's implement according to the example of the type after
# * Be careful to comment out when implementing while next_game
while next_game
# Substitute the value (return value) returned by executing rock-paper-scissors to the variable "next_game".
  # I'm running rock-paper-scissors with "janken.pon(player.hand, enemy.hand)".
  next_game = janken.pon(player.hand, enemy.hand)
  # When while the rock-paper-scissors execution result returns "false", this while is terminated. When "true" is returned, it keeps repeating that number of times.
# end while statement
end
