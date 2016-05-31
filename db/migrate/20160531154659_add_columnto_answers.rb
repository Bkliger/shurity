class AddColumntoAnswers < ActiveRecord::Migration
  def change
        add_column :answers, :stored_answer_id, :integer
  end
end
