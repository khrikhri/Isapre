class HomeController < ApplicationController
  def index
    @isapres = Isapre.all
  end
end
