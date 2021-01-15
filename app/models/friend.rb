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
    create friends
  end

  def self.create(object)
    object[:friends].each do |friend|
      new(friend[:first_name])
    end
  end
end
