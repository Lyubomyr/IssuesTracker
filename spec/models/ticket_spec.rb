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

require 'spec_helper'

describe Ticket do
  pending "add some examples to (or delete) #{__FILE__}"
end
