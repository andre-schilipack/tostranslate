class TranslatedLinesController < ApplicationController
  before_action :set_translated_line, only: [:show, :edit, :update, :destroy]

  # GET /translated_lines
  # GET /translated_lines.json
  def index
    @translated_lines = TranslatedLine.all
  end

  # GET /translated_lines/1
  # GET /translated_lines/1.json
  def show
  end

  # GET /translated_lines/new
  def new
    @translated_line = TranslatedLine.new
  end

  # GET /translated_lines/1/edit
  def edit
  end

  # POST /translated_lines
  # POST /translated_lines.json
  def create
    @translated_line = TranslatedLine.new(translated_line_params)

    respond_to do |format|
      if @translated_line.save
        @translated_lines = TranslatedLine.where(translation_code: @translated_line.translation_code)
        format.html { redirect_to @translated_line, notice: 'Translated line was successfully created.' }
        format.js {}
        format.json { render :show, status: :created, location: @translated_line }
      else
        format.html { render :new }
        format.js {}
        format.json { render json: @translated_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /translated_lines/1
  # PATCH/PUT /translated_lines/1.json
  def update
    respond_to do |format|
      if @translated_line.update(translated_line_params)
        format.html { redirect_to @translated_line, notice: 'Translated line was successfully updated.' }
        format.json { render :show, status: :ok, location: @translated_line }
      else
        format.html { render :edit }
        format.json { render json: @translated_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /translated_lines/1
  # DELETE /translated_lines/1.json
  def destroy
    @translated_line.destroy
    respond_to do |format|
      format.html { redirect_to translated_lines_url, notice: 'Translated line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_translated_line
      @translated_line = TranslatedLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def translated_line_params
      params.require(:translated_line).permit(:translation_code, :description)
    end
end
