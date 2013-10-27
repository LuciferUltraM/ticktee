require 'spec_helper'

feature "Seed data" do
	scenario "The basics" do
		load Rails.root + "db/seeds.rb"
		user = User.where(name: "admin", email: "admin@ticktee.com").first!
		project = Project.where(name: "Ticktee beta").first!
	end
end