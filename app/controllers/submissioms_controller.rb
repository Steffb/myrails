class SubmissiomsController < ApplicationController
  before_action :set_submissiom, only: [:show, :edit, :update, :destroy]

  # GET /submissioms
  # GET /submissioms.json
  def index
    @submissioms = Submissiom.all
  end

  # GET /submissioms/1
  # GET /submissioms/1.json
  def show
  end

  # GET /submissioms/new
  def new
    @submissiom = Submissiom.new
  end

  # GET /submissioms/1/edit
  def edit
  end

  # POST /submissioms
  # POST /submissioms.json
  def create
    @submissiom = Submissiom.new(submissiom_params)

    respond_to do |format|
      if @submissiom.save
        format.html { redirect_to @submissiom, notice: 'Submissiom was successfully created.' }
        format.json { render :show, status: :created, location: @submissiom }
      else
        format.html { render :new }
        format.json { render json: @submissiom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /submissioms/1
  # PATCH/PUT /submissioms/1.json
  def update
    respond_to do |format|
      if @submissiom.update(submissiom_params)
        format.html { redirect_to @submissiom, notice: 'Submissiom was successfully updated.' }
        format.json { render :show, status: :ok, location: @submissiom }
      else
        format.html { render :edit }
        format.json { render json: @submissiom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submissioms/1
  # DELETE /submissioms/1.json
  def destroy
    @submissiom.destroy
    respond_to do |format|
      format.html { redirect_to submissioms_url, notice: 'Submissiom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submissiom
      @submissiom = Submissiom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def submissiom_params
      params.require(:submissiom).permit(:title, :url)
    end
end
