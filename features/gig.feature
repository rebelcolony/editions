Feature: Gigs
	As a admin
	I want to be able to post a new gig
	So i can keep users informed about all upcoming gigs
	
	Scenario: create_gig
    When I am on the gigs page
		Then I should see "Create new gig"
		When I go to the new_gigs_page
		And I fill in "J00F Editions" for "gig_title"
		And I fill in "MOS London" for "gig_venue"
		And I fill in "London" for "gig_city"		
		And I fill in "UK" for "gig_country"
		And I fill in "description" for "gig_description"
		And I fill in "map" for "gig_map"
		And I press "gig_submit"		
		Then I should see "Gig was successfully created"