class Admin::PermissionsController < Admin::BaseController
  
  before_filter :find_user
  
  def index
    @ability = Ability.new(@user)
    @markets = Market.all
  end
  
  def update
    @user.permissions.clear
    params[:permissions].each do |id, permissions|
      market = Market.find(id)
      permissions.each do |permission, checked|
        Permission.create!(:user => @user, :thing => market, :action => permission)
      end
    end
    flash[:notice] = "Permissions updated."
    #redirect_to admin_user_permissions_path
    redirect_to admin_users_path
  end
  
  private
  
    def find_user
      @user = User.find(params[:user_id])
    end
end
