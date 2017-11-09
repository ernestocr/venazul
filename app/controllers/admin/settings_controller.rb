class Admin::SettingsController < Admin::BaseController

	def index
		@settings = Setting.first_or_create do |setting|
			setting.home_text = 'Tienes que llenarme en el panel de administración!'
			setting.address = 'Igual a mi'
			setting.telephone = 'Igual a mi'
		end
	end

	def update
		@settings = Setting.find(params[:id])
		if @settings.update_attributes(settings_params)
			redirect_to admin_settings_path, notice: 'Actualización exitosa!'
		else
			render :index
		end
	end

	private

		def settings_params
			params.require(:setting).permit!
		end

end