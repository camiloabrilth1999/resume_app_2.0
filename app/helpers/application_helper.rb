module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_name(user = current_user)
    if user.second_surname.empty?
      full_name = user.name + " " + user.first_surname
    else
      full_name = user.name + " " + user.first_surname + " " + user.second_surname
    end
  end
end
