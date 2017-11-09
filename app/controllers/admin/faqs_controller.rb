class Admin::FaqsController < Admin::BaseController
	before_action :set_faq, only: [:update, :destroy]

	def index
		@faqs = Faq.all
	end

	def create
		@faq = Faq.new(faq_params)
		if @faq.save
			redirect_to admin_faqs_path, notice: 'Pregunta agregada.'
		else
			redirect_to admin_faqs_path, alert: 'Hubo un error. Intente de nuevo.'
		end
	end

	def update
		if @faq.update_attributes(faq_params)
			redirect_to admin_faqs_path, notice: 'Pregunta actualizada.'
		else
			redirect_to admin_faqs_path, alert: 'Hubo un error. Intente de nuevo.'
		end
	end

	def destroy
		@faq.destroy
		redirect_to admin_faqs_path, notice: 'Pregunta eliminada.'
	end

	private

		def set_faq
			@faq = Faq.find(params[:id])
		end

		def faq_params
			params.require(:faq).permit!
		end

end