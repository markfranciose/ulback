class OperatingProceduresController < ApplicationController
  before_action :set_operating_procedure, only: [:show, :update, :destroy]

  # GET /operating_procedures
  # GET /operating_procedures.json
  def index
    @operating_procedures = OperatingProcedure.all
    for el in @operating_procedures
      el[:file_url] = "#{el.file.service_url}"
    end
  end

  # GET /operating_procedures/1
  # GET /operating_procedures/1.json
  def show
  end

  # POST /operating_procedures
  # POST /operating_procedures.json
  def create
    @operating_procedure = OperatingProcedure.new(operating_procedure_params)

    if @operating_procedure.save
      render :show, status: :created, location: @operating_procedure
    else
      render json: @operating_procedure.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /operating_procedures/1
  # PATCH/PUT /operating_procedures/1.json
  def update
    if @operating_procedure.update(operating_procedure_params)
      render :show, status: :ok, location: @operating_procedure
    else
      render json: @operating_procedure.errors, status: :unprocessable_entity
    end
  end

  # DELETE /operating_procedures/1
  # DELETE /operating_procedures/1.json
  def destroy
    @operating_procedure.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operating_procedure
      @operating_procedure = OperatingProcedure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operating_procedure_params
      params.permit(:op_number, :title,:file, :file_url)
    end
end
