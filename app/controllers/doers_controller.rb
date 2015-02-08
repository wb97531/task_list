class DoersController < ApplicationController
  before_action :set_doer, only: [:show, :edit, :update, :destroy]

  # GET /doers
  # GET /doers.json
  def index
    @doers = Doer.all
  end

  # GET /doers/1
  # GET /doers/1.json
  def show
  end

  # GET /doers/new
  def new
    @doer = Doer.new
  end

  # GET /doers/1/edit
  def edit
  end

  # POST /doers
  # POST /doers.json
  def create
    @doer = Doer.new(doer_params)

    respond_to do |format|
      if @doer.save
        format.html { redirect_to @doer, notice: 'Doer was successfully created.' }
        format.json { render :show, status: :created, location: @doer }
      else
        format.html { render :new }
        format.json { render json: @doer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doers/1
  # PATCH/PUT /doers/1.json
  def update
    respond_to do |format|
      if @doer.update(doer_params)
        format.html { redirect_to @doer, notice: 'Doer was successfully updated.' }
        format.json { render :show, status: :ok, location: @doer }
      else
        format.html { render :edit }
        format.json { render json: @doer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doers/1
  # DELETE /doers/1.json
  def destroy
    @doer.destroy
    respond_to do |format|
      format.html { redirect_to doers_url, notice: 'Doer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doer
      @doer = Doer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doer_params
      params.require(:doer).permit(:name, :email, :password, :password_confirmation, :omniauth)
    end
end
