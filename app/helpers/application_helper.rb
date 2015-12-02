module ApplicationHelper

	def sortable(column, title = nil)
	  title ||= column.titleize
	  css_class = column == sort_column ? "btn-default current #{sort_direction}" : "btn-default"
	  direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
	  link_to title, {:sort => column, :direction => direction}, {:class => css_class}
	end

	def flash_class(level)
	    case level
	        when 'notice' then "alert alert-info"
	        when 'success' then "alert alert-success"
	        when 'error' then "alert alert-warning"
	        when 'alert' then "alert alert-warning"
	    end
	end

end
