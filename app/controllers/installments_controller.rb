class InstallmentsController < ApplicationController
  before_action :set_installment, only: [:show, :update, :destroy]

  # GET /installments
  def index
    @installments = Installment.all

    render json: @installments
  end

  # GET /installments/1
  def show
    render json: @installment
  end

  # POST /installments
  def create
    @installment = Installment.new(installment_params)

    if @installment.save
      render json: @installment, status: :created, location: @installment
    else
      render json: @installment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /installments/1
  def update
    if @installment.update(installment_params)
      render json: @installment
    else
      render json: @installment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /installments/1
  def destroy
    @installment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_installment
      @installment = Installment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def installment_params
      params.fetch(:installment,{}).permit!
    end
end
