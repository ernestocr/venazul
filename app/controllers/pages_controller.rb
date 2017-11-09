class PagesController < ApplicationController

	def home
		@settings = Setting.first
		@albums = Album.all
	end

	def faq
		@settings = Setting.first
		@faqs = Faq.all
	end

end