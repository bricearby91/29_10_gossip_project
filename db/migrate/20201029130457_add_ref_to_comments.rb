class AddRefToComments < ActiveRecord::Migration[6.0]
  def change
		add_reference :comments, :user, foreign_key: true
		add_reference :comments, :gossip, foreign_key: true
  end
end
