class FriendsViewController < UIViewController

  def viewDidLoad
    super
    self.title = 'Amigos'
    refresh_button = UIBarButtonItem.alloc.initWithTitle('Actualizar', 
                                                          style: UIBarButtonSystemItemAction, 
                                                          target: self, 
                                                          action: 'refresh_friends')

    self.navigationItem.rightBarButtonItem = refresh_button

    view.delegate = self
    view.dataSource = self
  end

  def loadView
    super
    self.view = loadFriendsTableView
    view.backgroundColor = UIColor.whiteColor
  end

  def loadFriendsTableView
    table_view = UITableView.alloc.initWithFrame(self.view.frame, style: UITableViewStylePlain)
    table_view.autoresizingMask = UIViewAutoresizingFlexibleHeight
    table_view
  end

  def refresh_friends
    puts 'Actualizar'
  end

  def tableView(tableView, numberOfRowsInSection: section)
    4
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    @cell_id ||= 'CELL_IDENTIFIER'
    cell = tableView.dequeueReusableCellWithIdentifier(@cell_id)
    cell ||= UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: @cell_id)
    cell.textLabel.text = 'Hi'
    cell
  end
end
