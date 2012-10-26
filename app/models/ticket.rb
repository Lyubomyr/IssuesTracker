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
#  status         :string(255)      default("Waiting for staff"), not null
#  url            :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Ticket < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  before_save :add_url
  after_save :ticket_created_email
  after_save :ticket_updated_email

  attr_accessible :customer_name, :customer_email, :content, :title, :department, :status

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :customer_name, presence: true, length: { maximum: 50 }
  validates :customer_email, presence: true, format: {with: email_regex}
  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence: true, length: { maximum: 250 }
  validates :department, presence: true

  extend FriendlyId
  friendly_id :url

  private
  def add_url
    last_url = Ticket.last.try(:url) || 'AAA-000000'
    self.url = last_url.next
  end

  def ticket_created_email
	CustomerMailer.ticket_created(self).deliver
  end

  def ticket_updated_email
	CustomerMailer.ticket_status_updated(self).deliver
  end

end
