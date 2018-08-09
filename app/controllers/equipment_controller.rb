class EquipmentController < ApplicationController
  before_action :set_equipment, only: [:show, :update, :destroy]

  # GET /equipment
  # GET /equipment.json
  def index
    @equipment = Equipment.all
    for el in @equipment
      el[:file_url] = "#{el.file.service_url}"
    end
  end

  # GET /equipment/1
  # GET /equipment/1.json
  def show
  end

  # POST /equipment
  # POST /equipment.json
  def create
    @equipment = Equipment.new(equipment_params)

    if @equipment.save
      render :show, status: :created, location: @equipment
    else
      render json: @equipment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /equipment/1
  # PATCH/PUT /equipment/1.json
  def update
    if @equipment.update(equipment_params)
      render :show, status: :ok, location: @equipment
    else
      render json: @equipment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /equipment/1
  # DELETE /equipment/1.json
  def destroy
    @equipment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment
      @equipment = Equipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipment_params
      params.permit(:vendor, :machine, :file, :file_url)
    end
end
