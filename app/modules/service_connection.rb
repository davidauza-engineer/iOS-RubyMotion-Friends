module ServiceConnection

  def require_resource(url_string)
    url = NSURL.URLWithString(url_string)
    data = NSData.dataWithContentsOfURL(url)
    error_ptr = Pointer.new(:object)
    json_object = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingMutableContainers, error: error_ptr)

    json_object
  end
end
