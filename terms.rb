require 'mongoid'

# Mongoid.load!("/mongoid.yml", :production)

class Terms
  include Mongoid::Document

  belongs_to :credit_line

  field :limit, type: String
  field :limit_currency, type: Integer
  field :currencies, type: String
  field :cost, type: Hash

end