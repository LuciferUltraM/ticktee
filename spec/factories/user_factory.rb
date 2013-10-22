FactoryGirl.define do
	factory :user do
    	name "username"
		email "email"
		password "hunter2"
		password_confirmation "hunter2"
	end
end