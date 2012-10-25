# == Schema Information
#
# Table name: tickets
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  customer_name  :string(255)
#  customer_email :string(255)
#  title          :string(255)
#  content        :string(255)
#  department     :string(255)
#  status         :string(255)
#  url            :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Ticket < ActiveRecord::Base
  belongs_to :user

  attr_accessible :customer_name, :customer_email, :content, :title, :department

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :customer_name, presence: true, length: { maximum: 50 }
  validates :customer_email, presence: true, format: {with: email_regex},
  uniqueness: {case_sensitive: false}
  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence: true, length: { maximum: 50 }
  validates :department, presence: true

end
