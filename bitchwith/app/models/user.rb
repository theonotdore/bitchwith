class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :email
  field :username
  field :password_digest


  has_secure_password
end
