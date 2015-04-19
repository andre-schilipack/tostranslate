#encoding: utf-8
class TranslationFilesController < ApplicationController
  before_action :set_translation_file, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /translation_files
  # GET /translation_files.json
  def index
    @translation_files = TranslationFile.all
  end

  # GET /translation_files/1
  # GET /translation_files/1.json
  def show
    @translation_lines = @translation_file.translation_lines

    if params[:translation_code].present?
      @translation_lines = @translation_lines.where("translation_code = ?", params[:translation_code])
    end
  end

  # GET /translation_files/new
  def new
    @translation_file = TranslationFile.new
  end

  # GET /translation_files/1/edit
  def edit
  end

  # POST /translation_files
  # POST /translation_files.json
  def create
    @translation_file = TranslationFile.new()
    @translation_file.name = translation_file_params[:name]
    @translation_file.file = translation_file_params[:file]

    respond_to do |format|
      if @translation_file.save
        format.html { redirect_to @translation_file, notice: 'Translation file was successfully created.' }
        format.json { render :show, status: :created, location: @translation_file }
      else
        format.html { render :new }
        format.json { render json: @translation_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /translation_files/1
  # PATCH/PUT /translation_files/1.json
  def update
    respond_to do |format|
      if @translation_file.update(translation_file_params)
        format.html { redirect_to @translation_file, notice: 'Translation file was successfully updated.' }
        format.json { render :show, status: :ok, location: @translation_file }
      else
        format.html { render :edit }
        format.json { render json: @translation_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /translation_files/1
  # DELETE /translation_files/1.json
  def destroy
    @translation_file.destroy
    respond_to do |format|
      format.html { redirect_to translation_files_url, notice: 'Translation file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_translation_file
      @translation_file = TranslationFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def translation_file_params
      params.require(:translation_file).permit(:name, :file)
    end
end
