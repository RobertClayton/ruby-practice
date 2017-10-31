# fold_to_the_moon

# Have you heard about the myth that if you fold a paper enough times, you can reach the moon with it?
# Sure you do, but exactly how many? Maybe it's time to write a program to figure it out.

# You know that a piece of paper has a thickness of 0.0001m.
# Given distance in units of meters,
# calculate how many times you have to fold the paper to make the paper reach this distance.

# Also, if somebody is giving you a non-positive distance,
# it's clearly bogus and you should yell at them by returning null (or whatever equivalent in your language).



def fold_to(distance)

  paper_thickness = 0.0001
  folds = 0

  if distance.to_f >= 0.0
	  while distance > paper_thickness
    	paper_thickness *= 2
    	folds += 1
  	end
    return folds
  elsif distance.to_f < 0
  	return nil
  end
end
