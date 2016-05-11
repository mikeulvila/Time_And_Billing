class RemoveOldTables < ActiveRecord::Migration
  def up

    Customer.all.each do |c|
      Account.create(name: c.name, about: c.about)
    end

    Employee.all.each do |c|
      Account.create(name: c.name, email: c.email)
    end

    drop_table :customers
    drop_table :employees
    
  end
end
