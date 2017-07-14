class AddDestinationToContact < ActiveRecord::Migration
  def change
    add_column :contact_messages, :destination, :string, default: 'contact@diehard_fund.org'
  end
end
