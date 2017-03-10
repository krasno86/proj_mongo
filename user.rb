require 'mongoid'

# Mongoid.load!("/mongoid.yml", :production)

class User
  include Mongoid::Document

  has_many :credit_line

  field :name, type: String
  field :email, type: String
  field :phone, type: String
  field :password, type: String
  field :kyc, type: Boolean
  field :verified, type: Boolean
end

# class User
#   def initialize(data={})
#     @first_name = data[:first_name]
#     @email = data[:last_name]
#     @phone = data[:phone]
#     @kyc = data[:kyc]
#   end
# end