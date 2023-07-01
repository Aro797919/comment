require "application_system_test_case"

class AsqsTest < ApplicationSystemTestCase
  setup do
    @asq = asqs(:one)
  end

  test "visiting the index" do
    visit asqs_url
    assert_selector "h1", text: "Asqs"
  end

  test "should create asq" do
    visit asqs_url
    click_on "New asq"

    fill_in "Text", with: @asq.text
    fill_in "Title", with: @asq.title
    click_on "Create Asq"

    assert_text "Asq was successfully created"
    click_on "Back"
  end

  test "should update Asq" do
    visit asq_url(@asq)
    click_on "Edit this asq", match: :first

    fill_in "Text", with: @asq.text
    fill_in "Title", with: @asq.title
    click_on "Update Asq"

    assert_text "Asq was successfully updated"
    click_on "Back"
  end

  test "should destroy Asq" do
    visit asq_url(@asq)
    click_on "Destroy this asq", match: :first

    assert_text "Asq was successfully destroyed"
  end
end
