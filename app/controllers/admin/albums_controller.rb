class Admin::AlbumsController < Admin::BaseController
	before_action :set_album, only: [:show, :edit, :update, :destroy]

	def index
		@albums = Album.all
	end

	def show
	end

	def new
		@album = Album.new
	end

	def create
		@album = Album.new(album_params)
		if @album.save
			redirect_to admin_album_path(@album), notice: 'Album creado.'
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @album.update_attributes(album_params)
			redirect_to admin_album_path(@album), notice: 'Album actualizado.'
		else
			render :edit
		end
	end

	def destroy
		@album.destroy
		redirect_to admin_albums_path, notice: 'Album eliminado.'
	end

	private

		def set_album
			@album = Album.find(params[:id])
		end

		def album_params
			params.require(:album).permit(:name, :description, {photos: []})
		end

end