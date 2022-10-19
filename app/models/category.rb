class Category < ApplicationRecord
    belongs_to :user
    has_many :budget_transactions, through: :category_transactions
    has_many :category_transactions, dependent: :destroy

end
