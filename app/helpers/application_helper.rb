module ApplicationHelper
	def title(*parts)
		unless parts.empty?
			content_for :title do
				(parts << "Ticketed").join(" - ")
			end
		end
	end
end

def admins_only(&block)
	block.call if current_user.try(:admin?)	
end