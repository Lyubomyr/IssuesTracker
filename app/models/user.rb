# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  ticket_id       :integer
#  name            :string(255)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_many :tickets

  attr_accessible :name, :password, :password_confirmation
  has_secure_password
  validates_presence_of :name, :on => :create
  validates_presence_of :password, :on => :create

end
