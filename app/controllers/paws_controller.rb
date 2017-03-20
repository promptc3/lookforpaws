class PawsController < ApplicationController
  before_action :set_paw, only: [:show, :edit, :update, :destroy]

  # GET /paws
  # GET /paws.json
  def index
    @paws = Paw.all
  end

  # GET /paws/1
  # GET /paws/1.json
  def show
  end

  # GET /paws/new
  def new
    @paw = Paw.new
  end

  # GET /paws/1/edit
  def edit
  end

  # POST /paws
  # POST /paws.json
  def create
    @paw = Paw.new(paw_params)

    respond_to do |format|
      if @paw.save
        format.html { redirect_to @paw, notice: 'Paw was successfully created.' }
        format.json { render :show, status: :created, location: @paw }
      else
        format.html { render :new }
        format.json { render json: @paw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paws/1
  # PATCH/PUT /paws/1.json
  def update
    respond_to do |format|
      if @paw.update(paw_params)
        format.html { redirect_to @paw, notice: 'Paw was successfully updated.' }
        format.json { render :show, status: :ok, location: @paw }
      else
        format.html { render :edit }
        format.json { render json: @paw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paws/1
  # DELETE /paws/1.json
  def destroy
    @paw.destroy
    respond_to do |format|
      format.html { redirect_to paws_url, notice: 'Paw was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paw
      @paw = Paw.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paw_params
      params.require(:paw).permit(:avatar)
    end
end
