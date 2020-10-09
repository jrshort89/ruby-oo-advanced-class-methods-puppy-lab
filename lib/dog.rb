# Add your code here
class Dog
@@all = []

def initialize(name)
    @name = name
    self.save
end

attr_reader :name

# def self.add_dog(dog)
#     @@all << dog
# end

def self.all
    @@all
end

def self.clear_all
    @@all = []
end

def self.print_all
    @@all.each {|dog| puts dog.name}
end

def save
    self.class.all << self
end

end