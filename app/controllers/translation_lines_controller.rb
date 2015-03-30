class TranslationLinesController < ApplicationController
  before_action :set_translation_line, only: [:show, :edit, :update, :destroy]

  # GET /translation_lines
  # GET /translation_lines.json
  def index
    @translation_lines = TranslationLine.all
  end

  # GET /translation_lines/1
  # GET /translation_lines/1.json
  def show
  end

  # GET /translation_lines/new
  def new
    @translation_line = TranslationLine.new
  end

  # GET /translation_lines/1/edit
  def edit
  end

  # POST /translation_lines
  # POST /translation_lines.json
  def create
    @translation_line = TranslationLine.new(translation_line_params)

    respond_to do |format|
      if @translation_line.save
        format.html { redirect_to @translation_line, notice: 'Translation line was successfully created.' }
        format.json { render :show, status: :created, location: @translation_line }
      else
        format.html { render :new }
        format.json { render json: @translation_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /translation_lines/1
  # PATCH/PUT /translation_lines/1.json
  def update
    respond_to do |format|
      if @translation_line.update(translation_line_params)
        format.html { redirect_to @translation_line, notice: 'Translation line was successfully updated.' }
        format.json { render :show, status: :ok, location: @translation_line }
      else
        format.html { render :edit }
        format.json { render json: @translation_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /translation_lines/1
  # DELETE /translation_lines/1.json
  def destroy
    @translation_line.destroy
    respond_to do |format|
      format.html { redirect_to translation_lines_url, notice: 'Translation line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_translation_line
      @translation_line = TranslationLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def translation_line_params
      params.require(:translation_line).permit(:translation_file_id, :translation_id, :description)
    end
end
