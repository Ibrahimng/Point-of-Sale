require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: items
#
#  id            :integer(4)      not null, primary key
#  name          :string(255)
#  category      :string(255)
#  supplier_id   :integer(4)
#  descriptions  :text
#  cost_price    :integer(10)
#  unit_cost     :integer(10)
#  quantity      :integer(4)
#  created_at    :datetime
#  updated_at    :datetime
#  reorder_level :integer(4)
#

