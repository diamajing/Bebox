class Backend::UsersController < BackendController
    def index
        @users = User.all
    end 
    
    def show
        @user = User.find(params[:id])
    end 

    def check_pw
        user = User.find(params[:user_id])
        if params[:token] == 'beboxkey'
            redirect_to edit_backend_user_path(user)
        else
            redirect_to backend_user_path(user), alert: "Le mot de passe est incorrect"
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to backend_user_path(@user), notice: "Les donnees de l'utilisateur ont ete mise a jour"
        else
            redirect_to backend_user_path(user), alert: "Erreur! Veuillez reessayer"
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :function)
    end
end
