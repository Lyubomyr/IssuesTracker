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

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
