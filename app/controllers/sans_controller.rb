class SansController < ApplicationController
  before_action :set_san, only: [:show, :edit, :update, :destroy]

  # GET /sans
  # GET /sans.json
  def index
    @san = San.first
  end

  def show
  end

  def new
    @san = San.new
  end

  def edit
  end

  def create
    @san = San.new(san_params)

    respond_to do |format|
      if @san.save
        format.html { redirect_to @san, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @san }
      else
        format.html { render :new }
        format.json { render json: @san.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @san.update(san_params)
        format.html { redirect_to @san, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @san }
      else
        format.html { render :edit }
        format.json { render json: @san.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @san.destroy
    respond_to do |format|
      format.html { redirect_to sans_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_san
      @san = San.find(params[:id])
    end

    def san_params
      params.require(:san).permit(:title, :paragraph_one, :paragraph_two, :paragraph_three, :paragraph_four, :paragraph_five)
    end
end
