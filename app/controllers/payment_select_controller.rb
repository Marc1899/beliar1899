class PaymentSelectController < ApplicationController
  def select_plan
		@peliculafind = Pelicula.find(params[:pelicula])
end
  	def select_monthly_subscription
end
