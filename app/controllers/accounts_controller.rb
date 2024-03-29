class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /accounts
  # GET /accounts.json
  def index
    @accounts = Account.all
    @users = User.all
    @visits  = Ahoy::Visit.where("referring_domain IS NOT NULL").order("started_at DESC").paginate(:page => params[:page], per_page: 10 )
  end

  # GET /accounts/1
  # GET /accounts/1.json
  def show
  end

  # GET /accounts/new
  def new
    @account = current_user.build_account
  end

  # GET /accounts/1/edit
  def edit
  end

  # POST /accounts
  # POST /accounts.json
  def create
    @account = current_user.build_account(account_params)
    

    respond_to do |format|
      if @account.save
          if(params[:account][:avatar])
            current_user.avatar.attach(params[:account][:avatar])
          end
        format.html { redirect_to root_url, notice: 'Account was successfully created.' }
        format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounts/1
  # PATCH/PUT /accounts/1.json
  def update
    respond_to do |format|
      if @account.update(account_params)
          if(params[:account][:avatar])
            current_user.avatar.attach(params[:account][:avatar])
          end
        format.html { redirect_to profile_url, notice: 'Account was successfully updated.' }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts/1
  # DELETE /accounts/1.json
  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to accounts_url, notice: 'Account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      params.require(:account).permit(:name, :surname, :cel, :address, :dob, :user_id, :user_id)
    end
end
