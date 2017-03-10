require 'bundler/setup'
require 'mongoid'
require './user'
require './terms.rb'
require './credit_line.rb'

Mongoid.load!("./mongoid.yml", :development)

daniel = User.new( name: 'Daniel', email: 'Daniel@homepage.com',
                   phone: '+111111111', kyc: true, verified: true,
                   password: 'suadhauish')
daniel.save

alice = User.new(name: 'Alice', email: 'Alice@homepage.com',
                 phone:'+222222222', :kyc => true, verified: true,
                 password:'gshshdxhdhauish')
alice.save

bob = User.new(name: 'Bob', email: 'Bob@homepage.com',
                 phone:'+333333333', :kyc => true, verified: true,
                 password:'lhylhilhlh')
bob.save

charles = User.new(name:'Charles',email: 'Charles@gmail.com', phone: '4444444444',kyc: true)
charles.save

diana = User.new(name:'Diana',email:'Diana@gmail.com', phone:'5555555555',kyc: true)
diana.save

emily = User.new(name:'Emily',email:'Emily@gmail.com', phone:'666666666',kyc: false)
emily.save

terms1 = Terms.new(limit: 50,
                   limit_currency: 'EUR',
                   currencies: [:EUR],
                   cost: {
                       fixed_fee: 0,
                       commission: 0.01,
                       interest_rate: 0})
terms1.save

credit_line_first = Credit_line.new(active: true )
credit_line_first.save
credit_line_first.push(user_bank = bob, user_customer = alice, terms = terms1)
credit_line_first.user_bank = bob
credit_line_first.user_customer = alice
credit_line_first.terms = terms1
def find_user_by_phone(phone)
  return User.find_by(phone: phone)
end

def find_user_by_email(email)
  return User.find_by(email: email)
end




