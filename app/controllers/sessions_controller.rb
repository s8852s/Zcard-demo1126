class SessionsController < ApplicationController

	def new
	  @user = User.new
	end

	def create
		user = User.login(params[:user])
		if user
		  session[:userprof] = user.id
		  redirect_to root_path, notice: "登入成功"
		else
			redirect_to sign_in_user_path, notice: "登入失敗"
		end
	end

	def destroy
		session[:userprof] = nil
		redirect_to root_path, notice: "登出成功"
	end
end
