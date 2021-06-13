class BooksController < ApplicationController
  def top
  end
  def index
    @books=Book.all
  end

  def show
    @book=Book.find(params[:id])
  end

  def new
    @books=Book.all
    @book=Book.new
  end
  def create
    @book=Book.new(book_params)
    if @book.save
       redirect_to booklist_path(@book.id)

    else
      @books=Book.all
      render action: :new
    end


    end

  def edit
    @book=Book.find(params[:id])
  end
  def update
    @book=Book.find(params[:id])
    if @book.update(book_params)
      redirect_to booklist_path(@book.id)

    else
      render action: :edit
    end
  end
  def destroy
    book=Book.find(params[:id])
    book.destroy
    redirect_to booking_path


  end

private


  def book_params
    params.require(:book).permit(:title,:body)
    end
end
