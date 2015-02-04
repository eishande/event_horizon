require "rails_helper"

feature "calendar", %(
  As a user on my dashboard
  I want to see upcoming events
  So that I can be informed about the happenings of the cohort.

  Acceptance Criteria:
  - [x] I can see today and tomorrow's events
  - [x] Events that have already started are shown in a lesser
    visual priority
  - [] I can click on an event and it links to the event in
    the calendar
) do

  let(:user) { FactoryGirl.create(:user) }

  scenario "user sees event information" do
    calendar_event = FactoryGirl.create(:calendar_event)

    sign_in_as(user)
    visit dashboard_path

    expect(page).to have_content(calendar_event.from.to_formatted_s(:short))
    expect(page).to have_content(calendar_event.to.to_formatted_s(:short))
    expect(page).to have_content(calendar_event.title)
  end

  scenario "user sees today's and tomorrow's events" do
    event_today = FactoryGirl.create(:calendar_event, from: 1.hour.from_now)
    event_tomorrow = FactoryGirl.create(:calendar_event, from: 1.day.from_now)

    sign_in_as(user)
    visit dashboard_path

    expect(page).to have_content(event_today.title)
    expect(page).to have_content(event_tomorrow.title)
  end

  scenario "user should not see old events" do
    past_event = FactoryGirl.create(:calendar_event, from: 25.hours.ago)

    sign_in_as(user)
    visit dashboard_path

    expect(page).to_not have_content(past_event.title)
  end

  scenario "user should not see events far into the future" do
    future_event = FactoryGirl.create(:calendar_event, from: 2.days.from_now)

    sign_in_as(user)
    visit dashboard_path

    expect(page).to_not have_content(future_event.title)
  end

  scenario "events that have already started have a class of '.past-event'" do
    past_event = FactoryGirl.create(:calendar_event, from: 1.hour.ago, to: 1.hour.from_now)

    sign_in_as(user)
    visit dashboard_path

    expect(page).to have_css("table.calendar tr.past-event")
  end

end