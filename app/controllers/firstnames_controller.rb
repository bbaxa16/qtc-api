class FirstnamesController < ApplicationController
  before_action :set_firstname, only: [:show, :update, :destroy]

  # GET /firstnames
  def index
    @firstnames = Firstname.all

    render json: @firstnames
  end

  # GET /firstnames/1
  def show
    render json: @firstname
  end

  # POST /firstnames
  def create
    @firstname = Firstname.new(firstname_params)

    if @firstname.save
      render json: @firstname, status: :created, location: @firstname
    else
      render json: @firstname.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /firstnames/1
  def update
    if @firstname.update(firstname_params)
      render json: @firstname
    else
      render json: @firstname.errors, status: :unprocessable_entity
    end
  end

  # DELETE /firstnames/1
  def destroy
    @firstname.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firstname
      @firstname = Firstname.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def firstname_params
      params.require(:firstname).permit(:lastname, :bio, :img, :website, :instagram, :twitter, :facebook)
    end
end
