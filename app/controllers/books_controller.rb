class BooksController < ApplicationController
  def book
    @book= Book.all
   #render :json=> @autor
  end
  def index
    
  end
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice]="libro guardado"
      redirect_to books_path
  else
    render :action =>'new'
  end
end
   def show
    @libro = Book.find_by_name(params[:name])
  if @lobro.nil?
    @books = Book.all
    flash[:alert] = "El libro no fue encontrado"   
  end
  
  def book_params
    params.require(:book).permit(:title,:publishing,:stock,:category,:link)
  end
end