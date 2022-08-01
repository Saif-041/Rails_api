class UsersController < InheritedResources::Base

  private

    def user_params
      params.require(:user).permit( :fname, :lname, :email, :password, :age )
    end

end
