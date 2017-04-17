class V1::AuthorBooksController < ApplicationController
  before_action :set_v1_author_book, only: [:show, :update, :destroy]

  # GET /v1/author_books
  def index
    @v1_author_books = V1::AuthorBook.all

    render json: @v1_author_books
  end

  # GET /v1/author_books/1
  def show
    render json: @v1_author_book
  end

  # POST /v1/author_books
  def create
    @v1_author_book = V1::AuthorBook.new(v1_author_book_params)

    if @v1_author_book.save
      render json: @v1_author_book, status: :created, location: @v1_author_book
    else
      render json: @v1_author_book.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /v1/author_books/1
  def update
    if @v1_author_book.update(v1_author_book_params)
      render json: @v1_author_book
    else
      render json: @v1_author_book.errors, status: :unprocessable_entity
    end
  end

  # DELETE /v1/author_books/1
  def destroy
    @v1_author_book.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v1_author_book
      @v1_author_book = V1::AuthorBook.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def v1_author_book_params
      params.require(:v1_author_book).permit(:v1_author_id, :1_book_id)
    end
end
