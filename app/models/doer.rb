class Doer < ActiveRecord::Base
	has_many :tasks
	has_secure_password(validation: false)

	validates_confirmation_of :password, if: lambda { |m| !m.omniauth? && m.password.present? }
	validates_presence_of :password, :on => :create, if: lambda { |m| !m.omniauth? }
	validates_presence_of :password_confirmation, if: lambda { |m |!m.omniauth? && m.password.present? }
end
