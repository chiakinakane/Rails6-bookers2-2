class FavoritesController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    favorite = current_user.favorites.new(book_id: @book.id)
    favorite.save
    #redirect_to book_path(book.id)
  end

  def destroy
    @book = Book.find(params[:book_id])
    favorite = current_user.favorites.find_by(book_id: @book.id)
    favorite.destroy
   #redirect_to book_path(book.id)
  end
  
  
  # def create
  #   Favorite.create(user_id: current_user.id, book_id: @book.id)
  # end

  # def destroy
  #   Favorite = Like.find_by(user_id: current_user.id, book_id: @book.id)
  #   Favorite.destroy
  # end
  
  
  
end
