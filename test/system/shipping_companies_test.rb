require "application_system_test_case"

class ShippingCompaniesTest < ApplicationSystemTestCase
  setup do
    @shipping_company = shipping_companies(:one)
  end

  test "visiting the index" do
    visit shipping_companies_url
    assert_selector "h1", text: "Shipping Companies"
  end

  test "creating a Shipping company" do
    visit shipping_companies_url
    click_on "New Shipping Company"

    fill_in "Delivery Cost", with: @shipping_company.delivery_cost
    fill_in "Name", with: @shipping_company.name
    click_on "Create Shipping company"

    assert_text "Shipping company was successfully created"
    click_on "Back"
  end

  test "updating a Shipping company" do
    visit shipping_companies_url
    click_on "Edit", match: :first

    fill_in "Delivery Cost", with: @shipping_company.delivery_cost
    fill_in "Name", with: @shipping_company.name
    click_on "Update Shipping company"

    assert_text "Shipping company was successfully updated"
    click_on "Back"
  end

  test "destroying a Shipping company" do
    visit shipping_companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shipping company was successfully destroyed"
  end
end
