require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
f1 = Followers.new("Kevin", 26, "Really cool slogan.")
f2 = Followers.new("Reginald", 84, "Life is good.")
f3 = Followers.new("Dan", 45, "Take life by the horns.")

facebook = Cult.new("Facebookers", "Seattle", 2010, "Facebook for life")
microsoft = Cult.new("M-soft", "Portland", 2011, "Our original slogan")
linkedin = Cult.new("LinkedIners", "San Diego", 2012, "Everybody's on here now!")

kevins_oath = BloodOath.new(facebook, f1)
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
