require "../spec_helper"

FactoryGirl.define do
  factory :investment do
    name 'Zenith Birla'
    initial_deposit 3_00_000
    type 'Quarterly Interest'
    cumulative false
    folio_no 52357
    rate_of_interest 11.25
    created_at 25/10/2014
    term '3 years'
  end
end