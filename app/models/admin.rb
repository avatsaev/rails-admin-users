class Admin < ApplicationRecord

  devise :database_authenticatable, 
         :registerable,  
         :rememberable, 
         :jwt_authenticatable, 
         jwt_revocation_strategy: JwtBlacklist
end
