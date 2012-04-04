class PagesController < ApplicationController

	def Home
		@title =  "Home"
	end
	
	def Contact
		@title =  "Contact"
	end

	def about	
		@title = "about"
	end
	
	def help
		@title = "help"
	end

end
