class AboutsController < ApplicationController
  before_action :set_about, only: [:show, :edit, :update, :destroy]

  # GET /abouts
  # GET /abouts.json
  def index
    @abouts = About.all
    @about = About.find_by(id: 1)
  end

  # GET /abouts/1
  # GET /abouts/1.json
  def show
  end

  # GET /abouts/new
  def new
    @about = About.new
  end

  # GET /abouts/1/edit
  def edit
  end

  # POST /abouts
  # POST /abouts.json
  def create
    @about = About.new(about_params)

    respond_to do |format|
      if @about.save
        format.html { redirect_to @about, notice: 'About was successfully created.' }
        format.json { render :show, status: :created, location: @about }
      else
        format.html { render :new }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    if @about.update(about_params)
      redirect_to @about, notice: 'About was successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @about.destroy
    respond_to do |format|
      format.html { redirect_to abouts_url, notice: 'About was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about
      @about = About.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_params
      params.require(:about).permit(:title, :image, :pone, :ptwo, :pthree, :pfour, :pfive)
    end
end
