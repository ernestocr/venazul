class Admin::SessionsController < Admin::BaseController
	skip_before_action :require_login, except: [:destroy]

	def index
		redirect_to new_admin_session_path
	end

	def new
		@admin = User.new
	end

	def create
		if @admin = login(params[:email], params[:password])
			redirect_back_or_to(admin_root_path)
		else
			flash.now[:alert] = 'El login falló. Intente de nuevo.'
			render action: 'new'
		end
	end

	def destroy
		logout
		redirect_to root_path, notice: 'Sesión cerrada!'
	end

end