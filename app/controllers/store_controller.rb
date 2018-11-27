class StoreController < ApplicationController
  def index
    def counter
      if session[:counter].nil?
        session[:counter] = 0
      else
        session[:counter] += 1
      end
    end

    @products = Product.order(:title)
    @show_message = 'You visited this page ' + counter.to_s + ' times'
  end
end
