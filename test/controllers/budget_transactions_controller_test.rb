require "test_helper"

class BudgetTransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @budget_transaction = budget_transactions(:one)
  end

  test "should get index" do
    get budget_transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_budget_transaction_url
    assert_response :success
  end

  test "should create budget_transaction" do
    assert_difference("BudgetTransaction.count") do
      post budget_transactions_url, params: { budget_transaction: {  } }
    end

    assert_redirected_to budget_transaction_url(BudgetTransaction.last)
  end

  test "should show budget_transaction" do
    get budget_transaction_url(@budget_transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_budget_transaction_url(@budget_transaction)
    assert_response :success
  end

  test "should update budget_transaction" do
    patch budget_transaction_url(@budget_transaction), params: { budget_transaction: {  } }
    assert_redirected_to budget_transaction_url(@budget_transaction)
  end

  test "should destroy budget_transaction" do
    assert_difference("BudgetTransaction.count", -1) do
      delete budget_transaction_url(@budget_transaction)
    end

    assert_redirected_to budget_transactions_url
  end
end
