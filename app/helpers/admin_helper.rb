module AdminHelper


  # def show_check_icon(is_moderator)
  #   if is_moderator  
  #     tag(:input, type: "checkbox", checked:"checked", value: "", id:"checkbox2", data_toggle: "checkbox", checked:"")
  #   else 
  #     tag(:input, type: "checkbox", value: "", id:"checkbox1", data_toggle: "checkbox")
  #   end 
  # end

  def show_check_icon(is_moderator)
    if is_moderator  
      tag(:input, type: "checkbox", checked:"checked", value: "0", id:"checkbox2", data_toggle: "checkbox", checked:"", data_url:"/users/update", dat_remote:"true", data_method:"post")
    else 
      tag(:input, type: "checkbox", value: "1", id:"checkbox1", data_toggle: "checkbox", data_url:"/users/update", dat_remote:"true", data_method:"post")
    end 
  end
 

end
