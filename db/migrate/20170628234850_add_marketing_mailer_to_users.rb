class AddMarketingMailerToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :marketing_mailer, :string
  end
end
