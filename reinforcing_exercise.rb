require "pry"

# EXERCISE 1 BELOW ----------
emotions = {
  happiness: (rand(3)+1),
  anger: (rand(3)+1),
  sadness: (rand(3)+1),
  joyfulness: (rand(3)+1)
}



# EXERCISE 2 BELOW ----------
class Person

  @@name

  def self.create(name)
      personal_feelings = Person.new(name)
      return personal_feelings
    end

  def initialize(name)
    @emotions = {
      happiness: 2,
      anger: 2,
      sadness: 1,
      joyfulness: 3
    }
    @name = name
  end

  def how_you_feel
    @emotions[:happiness] = "medium"
    @emotions[:anger] = "medium"
    @emotions[:sadness] = "low"
    @emotions[:joyfulness] = "high"
    @emotions.each do |key, value|
      puts "#{@name} feels a #{value} level of #{key}."
    end
  end

end

johnny = Person.create("johnny")


# EXERCISE 3 BELOW ----------
puts johnny.how_you_feel
