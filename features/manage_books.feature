Feature: Manage Books
	In order to manage books
	As a manager
	I want to create and manage books

	Scenario: List Books
		Given I have books titled Tropic of Cancer, Dirty Havana Trilogy
		When I go to the list of books
		Then I should see "Tropic of Cancer"
		And I should see "Dirty Havana Trilogy"

	Scenario: Create Valid Book
		Given I have no books
		And I am on the list of books
		When I follow "New Book"
		And I fill in "Title" with "A Tale of Two Cities"
		And I fill in "Author" with "Charles Dickens"
		And I fill in "Isbn" with "9781570424953"
		And I press "Create"
		Then I should see "Book was successfully created."
		And I should see "A Tale of Two Cities"
		And I should see "Charles Dickens"
		And I should see "9781570424953"
		And I should have 1 book
