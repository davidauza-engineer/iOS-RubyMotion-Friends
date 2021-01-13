class FriendsViewController < UIViewController

  def viewDidLoad
    super
    self.title = 'Amigos'
    refresh_button = UIBarButtonItem.alloc.initWithTitle('Actualizar', 
                                                          style: UIBarButtonSystemItemAction, 
                                                          target: self, 
                                                          action: 'refresh_friends')

    self.navigationItem.rightBarButtonItem = refresh_button
  end

  def loadView
    super
    view.backgroundColor = UIColor.whiteColor
  end

  def refresh_friends
    puts 'Actualizar'
  end
end
