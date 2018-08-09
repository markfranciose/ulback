class MaterialsController < ApplicationController
  before_action :set_material, only: [:show, :update, :destroy]

  # GET /materials
  # GET /materials.json
  def index
    @materials = Material.all
    for el in @materials
      el[:file_url] = "#{el.file.service_url}"
    end
  end

  # GET /materials/1
  # GET /materials/1.json
  def show
  end

  # POST /materials
  # POST /materials.json
  def create

    @material = Material.new(material_params)

    if @material.save
      render :show, status: :created, location: @material
    else
      render json: @material.errors, status: :unprocessable_entity
    end
  end

  def new
    @material = Material.new
  end

  # PATCH/PUT /materials/1
  # PATCH/PUT /materials/1.json
  def update
    if @material.update(material_params)
      render :show, status: :ok, location: @material
    else
      render json: @material.errors, status: :unprocessable_entity
    end
  end

  # DELETE /materials/1
  # DELETE /materials/1.json
  def destroy
    @material.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material
      @material = Material.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_params
      params.permit(:material_type, :vendor, :process, :file,:file_url)
    end
end
