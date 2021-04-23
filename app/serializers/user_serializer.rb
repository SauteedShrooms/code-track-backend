class UserSerializer < ActiveModel::Serializer
   attributes :name, :username, :email, :age, :id
end