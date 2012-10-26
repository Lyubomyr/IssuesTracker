# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  ticket_id  :integer
#  content    :string(255)
#  from       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  belongs_to :ticket
  attr_accessible :content

   validates :content, presence: true, length: { maximum: 250 }
end
