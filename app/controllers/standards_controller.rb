class StandardsController < ApplicationController
  before_action :set_standard, only: [:show, :update, :destroy]

  # GET /standards
  # GET /standards.json
  def index
    @standards = Standard.all
    for el in @standards
      el[:file_url] = "#{el.file.service_url}"
    end
  end

  # GET /standards/1
  # GET /standards/1.json
  def show
  end

  # POST /standards
  # POST /standards.json
  def create
    @standard = Standard.new(standard_params)

    if @standard.save
      render :show, status: :created, location: @standard
    else
      render json: @standard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /standards/1
  # PATCH/PUT /standards/1.json
  def update
    if @standard.update(standard_params)
      render :show, status: :ok, location: @standard
    else
      render json: @standard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /standards/1
  # DELETE /standards/1.json
  def destroy
    @standard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_standard
      @standard = Standard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def standard_params
      params.permit(:standard_number, :title,:file, :file_url)
    end
end
