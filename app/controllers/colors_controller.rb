class ColorsController < ApplicationController
  before_action :set_color, only: [:show, :edit, :update, :destroy]

  # GET /colors
  # GET /colors.json
  def index
    @colors = Color.all
  end

  # GET /colors/1
  # GET /colors/1.json
  def show
  end

  # GET /colors/new
  def new
    @color = Color.new
  end

  # GET /colors/1/edit
  def edit
  end

  # POST /colors
  # POST /colors.json
  def create
    @color = Color.new(color_params)

    respond_to do |format|
      if @color.save
        format.html { redirect_to @color, notice: 'Color was successfully created.' }
        format.json { render action: 'show', status: :created, location: @color }
      else
        format.html { render action: 'new' }
        format.json { render json: @color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colors/1
  # PATCH/PUT /colors/1.json
  def update
    respond_to do |format|
      if @color.update(color_params)
        format.html { redirect_to @color, notice: 'Color was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colors/1
  # DELETE /colors/1.json
  def destroy
    @color.destroy
    respond_to do |format|
      format.html { redirect_to colors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_color
      @color = Color.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def color_params
      params[:color]
    end
end
