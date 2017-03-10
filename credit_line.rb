require 'mongoid'

class Credit_line
  include Mongoid::Document
  has_one :terms, class_name: "Terms", autobuild: true
  has_many :users, class_name: "User", autobuild: true


  field :user_bank, type: Hash
  field :user_customer, type: Hash
  # field :terms, type: Integer
  field :active, type: Boolean

end