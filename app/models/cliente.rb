class Cliente < ActiveRecord::Base
  
  has_secure_password
  before_save :encrypt_password
 
  def encrypt_password
    unless self.password_digest.blank?
      self.password_digest = Digest::SHA1.hexdigest(self.password_digest.to_s)
    end
    return true 
  end
  
end
