Feature: Provider manages offerings

	Background:
		Given a provider is already registered
			And is already logged in 

	@wip
	Scenario: provider creates new offering
		Given they are on the new offerings form
		When they fill in the form
			And they click on create new offering
		Then a new offerings exists
			And they are on the new offering page


	Scenario: provider sees own offerings
		Given they already have offerings
			And they are on the provider offerings page
		Then they see their offerings			

