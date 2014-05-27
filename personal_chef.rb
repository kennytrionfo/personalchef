
#Class Challenge:
# initialize a git repository and add, commit, and push

# create a personal chef class
# make his name attribute accessible
# make an initialize method that sets the name attribute.
# make a method called make_toast that accepts a parameter (brown, light brown, burnt, burnt black, etc)
# make a method called make_juice that accepts a parameter (orange, apple, cranberry)
# make a method called make_eggs (1,2,3, etc) and the style (overeasy, scrambled, sunnyside etc)
#How do we run the code that we've written?

# :hired by default, true
# make a method called fire! which fires your current chef by switching their :hire attribute from true to false.
# when a chef's :hired attribute is false, make it so that he cannot make_toast, make_juice etc.

# :busy by default, false
# Make a method called cooking? that checks to see if a chef is busy or not. Make sure they have a :busy atribute that is set tru any time a chef uses make_toast, make_juice etc.

class Personalchef
  attr_accessor :name, :hired

  def initialize (chefsname)
    @chefsname = chefsname
    @hired = true
  end

  def make_toast(toastiness)
    if @hired == false
      puts "\nYou fired me"
    else
      puts "\n#{@chefsname}, please make my toast #{toastiness}."
    end
  end

  def make_juice (juice)
    if @hired == false
      puts "um, remember you fired me"
    else
    puts "And #{@chefsname}, I'd like #{juice} for my juice please."
    end
  end

  def number_eggs (eggs)
    if @hired == false
      puts "Again, you fired me"
    else
    puts "And oh #{@chefsname}, for eggs, #{eggs} please."
    end
  end

  def fired!
    @hired = false
  end
end

simon = Personalchef.new("Simon")
simon.make_toast("slightly burnt")
simon.make_juice("Pinnaple")
simon.number_eggs("2")
simon.fired!
simon.make_toast("slightly burnt")
simon.make_juice("Pinnaple")
simon.number_eggs("2")

@chefsname = "Cinderella"

  puts "Thank you #{@chefsname}, it was very delicious."
  puts "Wait.. #{@chefsname}.. "
@chefsname = "Simon"
  puts "What happened to #{@chefsname}?"
