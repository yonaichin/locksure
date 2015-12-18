class CatelogController < ApplicationController
	def index 
		@catelog = Catelog.all
	end
end
