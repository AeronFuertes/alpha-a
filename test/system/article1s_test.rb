require "application_system_test_case"

class Article1sTest < ApplicationSystemTestCase
  setup do
    @article1 = article1s(:one)
  end

  test "visiting the index" do
    visit article1s_url
    assert_selector "h1", text: "Article1s"
  end

  test "creating a Article1" do
    visit article1s_url
    click_on "New Article1"

    fill_in "Description", with: @article1.description
    fill_in "Title", with: @article1.title
    click_on "Create Article1"

    assert_text "Article1 was successfully created"
    click_on "Back"
  end

  test "updating a Article1" do
    visit article1s_url
    click_on "Edit", match: :first

    fill_in "Description", with: @article1.description
    fill_in "Title", with: @article1.title
    click_on "Update Article1"

    assert_text "Article1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Article1" do
    visit article1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Article1 was successfully destroyed"
  end
end
