class CreateAnInitialDataOnTables < ActiveRecord::Migration
  def self.up

      StoreConfig.create    :company_name => "Company_name",
                          :email => "denniscarique@gmail.com",
                          :address => "LA"

      Supplier.create    :company_name => "Anthony's Books",
                       :first_name => "anthony",
                       :middle_name => "b",
                       :last_name => "canol",
                       :email => "hay@gmail.com"

      Employee.create   :first_name => "dennis",
                       :middle_name => "badong",
                       :last_name => "carique",
                       :email => "denniscarique@gmail.com"

      Customer.create :first_name => "johny",
                      :last_name => "joe",
                      :phone_number => "99999999999",
                      :city => "LTB",
                      :country => "PH"

      Customer.create :first_name => "jojo",
                      :last_name => "d",
                      :phone_number => "99999999999",
                      :city => "LTB",
                      :country => "PH"



      Item.create  :name => "Rails Book",
                   :category => "Book",
                   :supplier_id => 1,
                   :descriptions => "20 pieces of rails books from anthony",
                   :cost_price => 10,
                   :unit_cost => 12,
                   :quantity => 20,
                   :reorder_level => 5

      Item.create  :name => "Ruby Book",
                   :category => "Book",
                   :supplier_id => 1,
                   :descriptions => "10 pieces of ruby books from anthony",
                   :cost_price => 13,
                   :unit_cost => 15,
                   :quantity => 10,
                   :reorder_level => 5


      Sale.create :customer_id => 1,
                  :employee_id => 1,
                  :sales_type  => 1,
                  :order => 1

      sale = SaleItem.create :sale_id => 1,
                  :item_id => 1,
                  :quantity_purchased => 5,
                  :item_cost_price => 10,
                  :item_unit_price => 12,
                  :amount => 60

      Inventory.create :item_id => 1,
                  :employee_id => 1,
                  :comment => 'POS',
                  :quantity => -5,
                  :amount => 10,
                  :resource=> sale


      item      = Item.find(:first)
      item.quantity = 15
      item.save

  end

  def self.down

    raise ActiveRecord::IrreversibleMigration, "Can't recover the added data"

  end
end

