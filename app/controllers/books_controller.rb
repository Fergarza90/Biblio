class BooksController < ApplicationController
  def book
    @book= Book.all
   #render :json=> @autor
  end
  def index
    
  end
  
   # PUT /cars/1
  # PUT /cars/1.json
  def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @book.update_attributes(params[:book])
        format.html { redirect_to @book, notice: 'Libro Actuaalizado.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end
  
   # PUT /cars/1
  # PUT /cars/1.json
  def update
    @book = Book.find(params[:id])

    respond_to do |format|
      if @Book.update_attributes(params[:book])
        format.html { redirect_to @book, notice: 'Libro Actuaalizado.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
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
    @book = Book.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @car }
    end
  end
  
   # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @book = Book.find(params[:id])
    @Book.destroy

    respond_to do |format|
      format.html { redirect_to books_url }
      format.json { head :no_content }
    end
  end
  

  
  def book_params
    params.require(:book).permit(:title,:publishing,:stock,:category,:link,:id)
  end
end