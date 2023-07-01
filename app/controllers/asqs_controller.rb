class AsqsController < ApplicationController
  before_action :set_asq, only: %i[ show edit update destroy ]

  # GET /asqs or /asqs.json
  def index
    @asqs = Asq.all
  end

  # GET /asqs/1 or /asqs/1.json
  def show
  end

  # GET /asqs/new
  def new
    @asq = Asq.new
  end

  # GET /asqs/1/edit
  def edit
  end

  # POST /asqs or /asqs.json
  def create
    @asq = Asq.new(asq_params)

    respond_to do |format|
      if @asq.save
        format.html { redirect_to asq_url(@asq), notice: "Asq was successfully created." }
        format.json { render :show, status: :created, location: @asq }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @asq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asqs/1 or /asqs/1.json
  def update
    respond_to do |format|
      if @asq.update(asq_params)
        format.html { redirect_to asq_url(@asq), notice: "Asq was successfully updated." }
        format.json { render :show, status: :ok, location: @asq }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @asq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asqs/1 or /asqs/1.json
  def destroy
    @asq.destroy

    respond_to do |format|
      format.html { redirect_to asqs_url, notice: "Asq was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asq
      @asq = Asq.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def asq_params
      params.require(:asq).permit(:title, :text)
    end
end
