class BooksController < ApplicationController
  def create
    book = Book.create(book_params)
    redirect_to library_path(book.library)
  end

  def new
    @book = Book.new(library_id: params[:library_id])
  end

  private
  def book_params
    params.require(:book).permit(:title, :library_id)
  end
end
