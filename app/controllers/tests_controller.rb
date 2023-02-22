class TestsController < ApplicationController
  before_action :set_test, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: [:new, :edit]

  # GET /tests or /tests.json
  def index
    @tests = Test.all
  end

  # GET /tests/1 or /tests/1.json
  def show
  end

  # GET /tests/new
  def new
   @test = Test.new
  end
  def create
    @test = Test.new(test_params)
    @test.student_id = @student.id 
    @test.user_id = current_user.id

    if @test.save 
      redirect_to test_path(@test)
    else
      render 'new'
    end
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests or /tests.json
  def create
     @test = Test.create(question0: params[:question0],question1: params[:question1],question2: params[:question2])
       @test.save
  end


  # PATCH/PUT /tests/1 or /tests/1.json
  def update
    respond_to do |format|
      if @test.update(test_params)
        format.html { redirect_to test_url(@test), notice: "Test was successfully updated." }
        format.json { render :show, status: :ok, location: @test }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1 or /tests/1.json
  def destroy
    @test.destroy

    respond_to do |format|
      format.html { redirect_to tests_url, notice: "Test was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def test_params 
      params.require(:test).permit(:question0, :question1, :question2)
    end
end
