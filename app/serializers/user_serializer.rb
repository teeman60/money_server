class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :age, :email, :SSN, :total_deposited, :total_withdrawn
end

