class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :appid
      t.string :certid
      t.string :access_token
      t.string :access_token_expires_at
      t.string :refresh_token
      t.string :refresh_token_expires_at

      t.timestamps
    end
  end
end
