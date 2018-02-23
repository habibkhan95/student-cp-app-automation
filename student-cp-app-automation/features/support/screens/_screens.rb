##
# Methods to create page objects from each screen class go here.
# Add your own screens below.
##

class Screens < Calabash::ABase

	def home
		@home ||= page(HomeScreen)
	end

	def items
		@items ||= page(ItemsSelectScreen)
	end

	def maps
		@maps ||= page(MapsScreen)
	end

	def sophie_profile
		@profile ||= page(Profile)
	end

	def splash
		@splash ||= page(Splash)
	end
	# Your screens here

end
