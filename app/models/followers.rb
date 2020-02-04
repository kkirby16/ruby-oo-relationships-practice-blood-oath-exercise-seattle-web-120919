class Followers
  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def self.all
    @@all
  end

  def join_cult(cult)
    BloodOath.new(cult, self)
  end

  def cults
    self.BloodOath.map { |blood_oath| blood_oath.cult }
  end

  def self.of_a_certain_age(age)
    Followers.all.select { |follower| follower.age >= age }
  end
end
