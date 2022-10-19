class Category < ApplicationRecord
    belongs_to :user
    has_many :budget_transactions, through: :category_transactions
    
end
