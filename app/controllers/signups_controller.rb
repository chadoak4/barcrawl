class SignupsController < ApplicationController
  before_action :set_signup, only: [:show, :edit, :update, :destroy]


  # GET /signups
  # GET /signups.json
  def index
    @signups = Signup.all
  end

  # GET /signups/1
  # GET /signups/1.json
  def show
    @signups = Signup.all
  end

  # GET /signups/new
  def new
    @signups = Signup.all
    @signup = Signup.new
  end

  # GET /signups/1/edit
  def edit
    @signups = Signup.all
  end

  # POST /signups
  # POST /signups.json
  def create
    @signups = Signup.all
    @signup = Signup.new(signup_params)

    respond_to do |format|
      if @signup.save
        format.html { redirect_to @signup, notice: 'Signup was successfully created.' }
        format.json { render :show, status: :created, location: @signup }
        
      else
        format.html { render :new }
        format.json { render json: @signup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /signups/1
  # PATCH/PUT /signups/1.json
  def update
    respond_to do |format|
      if @signup.update(signup_params)
        format.html { redirect_to @signup, notice: 'Signup was successfully updated.' }
        format.json { render :show, status: :ok, location: @signup }
      else
        format.html { render :edit }
        format.json { render json: @signup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signups/1
  # DELETE /signups/1.json
  def destroy
    @signups = Signup.all
    @signup.destroy
    respond_to do |format|
      format.html { redirect_to signups_url, notice: 'Signup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_signup
      @signups = Signup.all
      @signup = Signup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def signup_params
      @signups = Signup.all
      params.require(:signup).permit(:name, :size, :guest1, :size1, :guest2, :size2, :guest3, :size3, :guest4, :size4)
    end
end
