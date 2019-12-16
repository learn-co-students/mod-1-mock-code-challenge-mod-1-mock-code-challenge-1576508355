require 'pry'
require_relative './book'
require_relative './author'

#Some author instances
bradbury = Author.new("Ray Bradbury")
zoidberg = Author.new("Dr. Zoidberg")
summer = Author.new("Summer Ratzo")

#Some book instances assigned to variables for test purposes
f_451 = bradbury.write_book("Fahrenheit 451", 46_118)
dandelion_wine = bradbury.write_book("Dandelion Wine", 65_555)

why_not = zoidberg.write_book("Why Not?", 30_332)
zoids_lament = zoidberg.write_book("What's the Deal with Doctors?: How to make it as a comedian as an MD", 45_121)

to_be_a_rat = summer.write_book("Life and Death Chronicles of the Common House Rat", 420)



binding.pry
"boop" #so pry doesn't shit itself


