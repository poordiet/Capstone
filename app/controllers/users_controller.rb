class UsersController < ApplicationController
 
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :check_admin

  def check_admin
    unless current_user.admin == true
      flash.alert = "You must be an Admin to access this page!"
      redirect_to root_path
    end
  end
    # GET /users
    # GET /users.json
    def index
      @users = User.all
    end
  
    # GET /users/1
    # GET /users/1.json
    def show
    end
  
    # GET /users/new
    def new
      session[:prev_url] = request.referer
      @user = User.new
    end

    # GET /users/1/edit_password
    def edit_password
      @user = User.find(params[:id])
      session[:prev_url] = request.referer
    end
  
    # GET /users/1/edit
    def edit
      session[:prev_url] = request.referer
    end
  
    # POST /users
    # POST /users.json
    def create
      @user = User.new(user_params)

      respond_to do |format|
        if @user.employee.user
          @user.errors.add(:employee , "already has an account")
          format.html { render :new, danger: 'Employee already has User' }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        elsif @user.save
          puts 'inside elsif in controller'
          format.html { redirect_to @user, success: 'User was successfully created.' }
          format.json { render :show, status: :created, location: @user }
        else
          puts 'inside else in controller'
          format.html { render :new }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /users/1
    # PATCH/PUT /users/1.json
    def update
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to @user, success: 'User was successfully updated.' }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

     # Second update action
    def update_password
      @user = User.find(params[:id])
      respond_to do |format|
      if @user.update_attributes(user_params)
        format.html { redirect_to @user, success: 'Password for user was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit_password }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
    # DELETE /users/1
    # DELETE /users/1.json
    def destroy
      @user.destroy
      respond_to do |format|
        format.html { redirect_to users_url, notice: 'User was successfully deleted.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def user_params
        params.require(:user).permit(:email, :encrypted_password, :reset_password_token,
                                    :reset_password_sent_at, :remember_created_at, :admin,
                                    :password, :password_confirmation, :employee_id)
      end
  end
  