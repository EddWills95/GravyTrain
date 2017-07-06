Feature: Provider creates offerings

	Background:
		Given a provider is logged in
			And is on their account page

	@wip
	Scenario: provider views own offerings
		When they click on offerings
		Then they see their own offerings