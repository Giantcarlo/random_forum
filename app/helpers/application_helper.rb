module ApplicationHelper

  # Changes devise flash names to bootstrap flash names
  def flash_class_name(name) 
    case name
    when "notice" then "success"
    when "alert"  then "danger"
    else name
    end
  end
end
