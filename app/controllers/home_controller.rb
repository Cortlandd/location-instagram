class HomeController < ApplicationController
  	def index
   	access_token = "1615794409.84795f1.4fb516b7372a4664bd7b18d052968231" # should have been session[:access_token]. Never store credentials in your code
   	client = Instagram.client(access_token: access_token)

   	geocoder = Geocoder.search(params[:q] || "chicago, illinois")
   	lat = geocoder.first.data["geometry"]["location"]["lat"]
   	lng = geocoder.first.data["geometry"]["location"]["lng"]
   

   	@results = client.media_search(lat, lng)
  end 
end
