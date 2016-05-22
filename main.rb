
def start
    puts """ It was evening time on the settlement and you are commanded to bring
    some water from the well to the village. So you go to the well and start
    putting the bucket into suddenly a strong force pushes you into the well!"""

    puts "DUH DUH DUH!!!!!!"

    puts """You awaken but it is getting even darker. You are very confused as
    to why their is no water in this particular well. But you see three doors.
    A Blue Door, a Red Door, and a Green door. Please now pick which room to go
    into.

    For Blue Door, type blue door.

    For Red Door, type red door.

    For Green Door, type green door.

    To not do anything, type wait """

    choice = $stdin.gets.chomp
    if choice.include? "blue door"
        #This will go to the blue room to continue the game
        blueRoom
    elsif choice.include? "red door"
        #This will go to the red room to continue the game
        redRoom
    elsif choice.include? "green door"
        #this will go to the green room
        greenRoom
    elsif choice.include? "wait"
        dead("You waited and ended up starving to death")
    else
        dead("I did not understand what you typed")
    end
end


def blueRoom
    puts """ Upon entering the blue room you get struck by a flying baseball
    bat and fall into a dirty tiny hole that is ironically the same dimensions
    as you. You fall through what seems like a spider room and land on your
    face. You also look up and get hit by a flashlight that you have no memory
    of having. You proceed to turn on the light to see two holes. You must
    now decide which room to take. """

    puts "Type: Hole One or Hole Two"

    print "> "
    choice = $stdin.gets.chomp

    if choice.include? "Hole One"
        dead("You crawled into the first hole and were slain by a giant spider")
    elsif choice.include? "Hole Two"
        alive(""" You decide to keep crawling into stiar case two which leads to a
        staircase leading to the sewer exit into the city. You then proceed to go
        home and think about your crazy adventure""")
    else
        puts "Please try again"
    end
end


def redRoom
     puts """You enter the room and the floor suddenly collapses! You are left
    #severaly injured and cannot move your legs. Worse of all, you seem to be
    #going in and out of conciousness. However, immiedietly to your line of sight
    #three holes."""

    puts """You see a hole that emmits a biright light. Very bright that it
    #starts to hurt your eyes"""

    puts """The first hole goes straight underground. It also appears to be
    #emmiting some type of smoke."""

    puts """You see a third hole that also has some sort of moving platform.
    #Next to the wall you also discover a sign that says in bold letters
    #DO NOT ENTER"""
    choice = $stdin.gets.chomp
    if choice.include? "Hole One"
        dead(""" You decide to go into the hole which is emmiting the bright light.
        Upon entering, a weird lizard grabs your hand and introduces you to the
        afterlife. Aka, you died. """ )
    elsif choice.include? "Hole Two"
        dead(" Really? You go into a hole that is emmiting tons of smoke? _._ you deserve to die")
    elsif choice.include? "Hole Three"
        alive(""" You get in the elevator in the third hole and it ends up going up and burst through a shopping malls men's restroom.
         Everyone is staring at you in confusion, but you are just happy to be alive.""" )
     else
         puts "sorry mate, cannot understand your input"
    end
end

def greenRoom
    puts """You enter the green door and two rabbits push you into the dirt and
    proceed to beat you with a stick. They now stare at you intensely as your
    flee or fight mode comes in. What do you do?"""

    puts "Option 1. Try to pet the rabbit | Type pet rabbit"

    puts "Option 2 Run in the only direction available | Type Run"

    puts  "Option 3 Stay | Type Stay"

    puts "Option 4: ??? Bonus. Read the source code to find out secret option."


    choice = $stdin.gets.chomp

    if choice.include? "pet rabbit"
        dead("Turns out the rabbits were hungry and you made a great meal!")
    elsif choice.include? "Run"
        alive("Good idea. These rabbits are kinda slow and you found the exit!")
    elsif choice.include? "Stay"
        alive(""" You live with the rabbits forever and never leave. Eventually
        becoming Lord Commander of the Rabbits and protect the wall!""")
    elsif choice.include? "Feed Carrots"
        alive("""Rabbits, even cannibal-ones, love carrots! You now befriend them
        and they make you Lord Commander!""")
    else
        puts "Sorry, did not understand your input"
    end
end


# This is a function that is death. If the player goes into a room that causes death this is the default thing that happens
def dead(reason)
    puts reason, "What a death indeed"

    puts "Game over!"

    puts """ Thanks for playing. This game was an assignment on
    Learn Ruby the hard way. I have definetly learned how to use defs!
    If you found a bug please go ahead and either submit a pull request or
    submit a bug. Hope you enjoyed the game!"""
end

# This function is for if the player makes it out alive. It gives useful information on why they survived.
def alive(reason)
    puts reason, "Now be gratefult to be alive"

    puts "Game Over!"

    puts """ Thanks for playing. This game was an assignment on
    Learn Ruby the hard way. I have definetly learned how to use defs!
    If you found a bug please go ahead and either submit a pull request or
    submit a bug. Hope you enjoyed the game!"""
end

#This starts the program
start
