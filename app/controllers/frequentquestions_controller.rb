class FrequentquestionsController < ApplicationController
  before_action :set_frequentquestion, only: %i[ show edit update destroy ]

  # GET /frequentquestions or /frequentquestions.json
  def index
    @frequentquestions = Frequentquestion.all
  end

  # GET /frequentquestions/1 or /frequentquestions/1.json
  def show
  end

  # GET /frequentquestions/new
  def new
    @frequentquestion = Frequentquestion.new
  end

  # GET /frequentquestions/1/edit
  def edit
  end

  # POST /frequentquestions or /frequentquestions.json
  def create
    @frequentquestion = Frequentquestion.new(frequentquestion_params)

    respond_to do |format|
      if @frequentquestion.save
        format.html { redirect_to frequentquestion_url(@frequentquestion), notice: "Frequentquestion was successfully created." }
        format.json { render :show, status: :created, location: @frequentquestion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @frequentquestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frequentquestions/1 or /frequentquestions/1.json
  def update
    respond_to do |format|
      if @frequentquestion.update(frequentquestion_params)
        format.html { redirect_to frequentquestion_url(@frequentquestion), notice: "Frequentquestion was successfully updated." }
        format.json { render :show, status: :ok, location: @frequentquestion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @frequentquestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frequentquestions/1 or /frequentquestions/1.json
  def destroy
    @frequentquestion.destroy

    respond_to do |format|
      format.html { redirect_to frequentquestions_url, notice: "Frequentquestion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frequentquestion
      @frequentquestion = Frequentquestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frequentquestion_params
      params.require(:frequentquestion).permit(:questions, :answer)
    end
end
