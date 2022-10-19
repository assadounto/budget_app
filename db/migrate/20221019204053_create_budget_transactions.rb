class CreateBudgetTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :budget_transactions do |t|

      t.timestamps
    end
  end
end
