class Friend
  extend ServiceConnection

  @@friends = ['Luis', 'Arturo', 'Ignacio']

  def self.all
    @@friends
  end

  def initialize(name)
    @@friends << name
  end

  def self.request
    friends = require_resource('http://gzfrancisco.name/resources/friends.json')
    puts friends
  end
end
