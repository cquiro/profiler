module ProfileHelper
  def action_link
    if User.count == 0
      link_to "Create profile", new_path
    else
      link_to "Edit profile", edit_path
    end
  end
end
