class ProfilesController < ApplicationController
  def profile_home
  end

  def profile_info
  end

  def edit_profile_bank
  end

  def update_profile_bank
    current_user.iban = params[:iban]
    if current_user.save
      redirect_to profile_home_path
    else
      render :edit_profile_bank
    end
  end

  def recover_my_pot
  end

  def withdraw
  end

  def avatar_base
  end

  def avatar
    current_user.photo = params[:photo]
    if current_user.save
      redirect_to profile_home_path
    else
      render :edit_avatar
    end
  end
end
