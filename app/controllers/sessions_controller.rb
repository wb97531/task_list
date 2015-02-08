class SessionsController < ApplicationController

  def login
  end

	def oauth
		@doer = Doer.where(
			email: omniauth_options[:email]
		).first_or_initalize(auth_options)
		if @doer.persisted?
			session[:id] = @doer.id
			redirected_to root_path,
		                notice: "Welcome back #{@doer.name}."
		else
			redirect_to root_path
		end
	end

	private

	def ominauth_options
		if auth_hash = request.env['omniauth.auth']
			first_name, last_name = auth_hash[:info][:name].split(/\s+/, 2)
			{
				email: auth_hash[:info][:email],
			  first_name: first_name,
			  last_name: last_name,
			  omniauth: true
			}
		end
	end
end
