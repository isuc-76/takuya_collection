class User::UsersController < ApplicationController

before_action :authenticate_user!
before_action :correct_user, only: [:show, :edit, :update]

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		p "ユーザー詳細アップデート"
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to user_user_path(current_user)
		else
			render 'edit'
		end
	end

	def destroy
		User.find(params[:id]).destroy
		flash[:success]="退会しました"
		redirect_to root_path
	end

	private

		def user_params
			params.require(:user).permit(:name,:postal_code,:address,:telephone_number,:email,:deleted_at)
		end

		def correct_user
			@user = User.find(params[:id])
			if current_user != @user
				redirect_back(fallback_location: root_path)
			end
		end

end
