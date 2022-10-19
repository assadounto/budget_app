class CategoryTransaction < ApplicationRecord
    belongs_to :category
    belongs_to :budget_transaction
end
