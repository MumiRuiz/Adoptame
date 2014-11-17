module ApplicationHelper
  def flash_class(type)
    case type
    when :success then "alert-success"
    when :error then "alert-danger"
    when :alert then "alert-danger"
    when :notice then "alert-info"
    else "alert-info"
    end 
  end
end
