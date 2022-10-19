require "application_system_test_case"

class BudgetTransactionsTest < ApplicationSystemTestCase
  setup do
    @budget_transaction = budget_transactions(:one)
  end

  test "visiting the index" do
    visit budget_transactions_url
    assert_selector "h1", text: "Budget transactions"
  end

  test "should create budget transaction" do
    visit budget_transactions_url
    click_on "New budget transaction"

    click_on "Create Budget transaction"

    assert_text "Budget transaction was successfully created"
    click_on "Back"
  end

  test "should update Budget transaction" do
    visit budget_transaction_url(@budget_transaction)
    click_on "Edit this budget transaction", match: :first

    click_on "Update Budget transaction"

    assert_text "Budget transaction was successfully updated"
    click_on "Back"
  end

  test "should destroy Budget transaction" do
    visit budget_transaction_url(@budget_transaction)
    click_on "Destroy this budget transaction", match: :first

    assert_text "Budget transaction was successfully destroyed"
  end
end
