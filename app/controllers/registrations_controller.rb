class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    @cons = Consumption.find(session[:consumption]["id"])
    @cons.user_id = User.last.id
    @cons.date = Date.today
    @cons.save
    new_objective_path
  end
end
