require 'digest/sha1'
class Authentication < ActiveRecord::Base
  belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'
  before_create :generate_token

  def self.register_push_token_for_token push_token, platform, token
    hash_token = Authentication.hash_token(token)
    Authentication.where(:push_token => push_token, :platform => platform).where.not(:token => hash_token).destroy_all
    Authentication.where(:token => hash_token).each do |auth|
      auth.push_token = push_token
      auth.platform = platform
      auth.save
    end
  end

  def self.authenticate_user user, platform = nil
    a = Authentication.new
    a.user_id = user.is_a?(User) ? user.id : user
    a.platform = platform
    a.save
    token = a.token
    a.token = Authentication.hash_token token
    a.save
    return token
  end

  def self.get_user_by_token token
    hashed_token = Authentication.hash_token token
    a = Authentication.where(:token => hashed_token).first
    if a == nil
      return nil
    else
      return a.user
    end
  end

  protected
  def generate_token
    self.token = loop do
      random_token = SecureRandom.urlsafe_base64(nil, false)
      break random_token unless Authentication.exists?(:token => random_token)
    end
  end

  def self.hash_token token
    return Digest::SHA1.hexdigest("sonic" + token + "craph")
  end
end
