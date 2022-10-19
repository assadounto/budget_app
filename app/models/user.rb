class User < ApplicationRecord
    has_many :budget_transactions,foreign_key: "user_id", class_name: "BudgetTransaction", dependent: :destroy
    has_many :categories, foreign_key: "user_id", class_name: "Category", dependent: :destroy
end
