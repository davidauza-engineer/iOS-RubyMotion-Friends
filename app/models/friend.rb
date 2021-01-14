class Friend
  @@friends = ['Luis', 'Arturo', 'Ignacio']

  def self.all
    @@friends
  end

  def initialize(name)
    @@friends << name
  end
end
