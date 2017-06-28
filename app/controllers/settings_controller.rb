class SettingsController < ApplicationController
	layout "admin"
   def index
      @setting = current_user.setting
      @payment = current_user.payments
    end

    def new
      @setting = current_user.build_setting
  end


  def create
      @setting = current_user.build_setting(setting_params)
    if 
      @setting.save
      flash[:success] = t('setting.create_success')
      redirect_to settings_path
      else
      render :new
      end
  end
 
  def edit
      @setting = Seting.find(params[:id])
  end
 
  def update
   @setting = Seting.find(params[:id])
 
      if @setting.update_attributes(setting_params)
        flash[:success] = t('setting.create_success')
        redirect_to settings_path
        else
        render :index
        end
  end
 
 
private
  def setting_params
      params.require(:setting).permit(:country, :language)
  end  
 end