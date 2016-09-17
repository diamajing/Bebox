module BackendHelper
	
  def menu_active(c_name, second = true)
    return 'active' if controller_name == c_name && second
  end

end
