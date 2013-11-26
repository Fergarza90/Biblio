class NewbooksController < ApplicationController
  def newbook
    @book= Book.new
   #render :json=> @autor
  end
end
