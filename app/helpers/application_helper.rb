# coding: utf-8
module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = 'Попутки Троицк-Москва'
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

	def generate_active_class(str1, str2)
		
		if str1 == str2
			if str1 == "mypage"
				return 'dropdown active'
			else
				"active"
			end

		else
			if str1 == "mypage"
				"dropdown"
			else
				""
			end
		end
		
	end

end
