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

require 'spec_helper'

describe Comment do
  pending "add some examples to (or delete) #{__FILE__}"
end
