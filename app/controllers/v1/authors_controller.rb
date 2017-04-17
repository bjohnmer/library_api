class V1::AuthorsController < ApplicationController
  before_action :set_v1_author, only: [:show, :update, :destroy]

  # GET /v1/authors
  def index
    @v1_authors = V1::Author.all

    render json: @v1_authors
  end

  # GET /v1/authors/1
  def show
    render json: @v1_author
  end

  # POST /v1/authors
  def create
    @v1_author = V1::Author.new(v1_author_params)

    if @v1_author.save
      render json: @v1_author, status: :created, location: @v1_author
    else
      render json: @v1_author.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /v1/authors/1
  def update
    if @v1_author.update(v1_author_params)
      render json: @v1_author
    else
      render json: @v1_author.errors, status: :unprocessable_entity
    end
  end

  # DELETE /v1/authors/1
  def destroy
    if @v1_author.destroy
      render json: { data: "ok" }, status: :ok
    else
      render json: @v1_author.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_v1_author
      @v1_author = V1::Author.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def v1_author_params
      params.require(:v1_author).permit(:first_name, :last_name, :bio)
    end
end
