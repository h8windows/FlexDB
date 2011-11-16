module Admin::PermissionsHelper
  
  def permissions
    {
      "view" => "View Feature",
      "create features" => "Create Feature",
      "edit features" => "Edit Feature"
    }
  end
  
end
