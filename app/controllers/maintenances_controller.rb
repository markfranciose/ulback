class MaintenancesController < ApplicationController
  before_action :set_maintenance, only: [:show, :update, :destroy]

  # GET /maintenances
  # GET /maintenances.json
  def index
    @maintenances = Maintenance.all
    for el in @maintenances
      el[:file_url] = "#{el.file.service_url}"
    end
  end

  # GET /maintenances/1
  # GET /maintenances/1.json
  def show
  end

  # POST /maintenances
  # POST /maintenances.json
  def create
    @maintenance = Maintenance.new(maintenance_params)

    if @maintenance.save
      render :show, status: :created, location: @maintenance
    else
      render json: @maintenance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /maintenances/1
  # PATCH/PUT /maintenances/1.json
  def update
    if @maintenance.update(maintenance_params)
      render :show, status: :ok, location: @maintenance
    else
      render json: @maintenance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /maintenances/1
  # DELETE /maintenances/1.json
  def destroy
    @maintenance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maintenance
      @maintenance = Maintenance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maintenance_params
      params.permit(:maintenance_date, :machine, :file, :file_url)
    end
end
