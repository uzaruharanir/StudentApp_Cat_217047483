class StudentsformsController < ApplicationController
  before_action :set_studentsform, only: [:show, :edit, :update, :destroy]

  # GET /studentsforms
  # GET /studentsforms.json
  def index
    @studentsforms = Studentsform.all
  end

  # GET /studentsforms/1
  # GET /studentsforms/1.json
  def show
  end

  # GET /studentsforms/new
  def new
    @studentsform = Studentsform.new
  end

  # GET /studentsforms/1/edit
  def edit
  end

  # POST /studentsforms
  # POST /studentsforms.json
  def create
    @studentsform = Studentsform.new(studentsform_params)

    respond_to do |format|
      if @studentsform.save
        format.html { redirect_to @studentsform, notice: 'Studentsform was successfully created.' }
        format.json { render :show, status: :created, location: @studentsform }
      else
        format.html { render :new }
        format.json { render json: @studentsform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studentsforms/1
  # PATCH/PUT /studentsforms/1.json
  def update
    respond_to do |format|
      if @studentsform.update(studentsform_params)
        format.html { redirect_to @studentsform, notice: 'Studentsform was successfully updated.' }
        format.json { render :show, status: :ok, location: @studentsform }
      else
        format.html { render :edit }
        format.json { render json: @studentsform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentsforms/1
  # DELETE /studentsforms/1.json
  def destroy
    @studentsform.destroy
    respond_to do |format|
      format.html { redirect_to studentsforms_url, notice: 'Studentsform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentsform
      @studentsform = Studentsform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studentsform_params
      params.require(:studentsform).permit(:firstname, :lastname, :age, :regno)
    end
end
