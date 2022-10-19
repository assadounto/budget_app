class BudgetTransaction < ApplicationRecord
    belongs_to :user
    has_many :category_transactions,dependent: :destroy
    has_many :categories, through: :category_transactions
end
