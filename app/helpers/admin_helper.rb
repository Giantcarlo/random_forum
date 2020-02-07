module AdminHelper


  def show_check_icon(is_moderator)
    if is_moderator  
      tag(:input, type: "checkbox", checked:"checked", value: "", id:"checkbox4", data_toggle: "checkbox", disabled:"", checked:"")
    else 
      tag(:input, type: "checkbox", value: "", id:"checkbox3", data_toggle: "checkbox", disabled:"")
    end 
  end


end
