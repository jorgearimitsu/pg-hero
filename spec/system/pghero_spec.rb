require "rails_helper"

RSpec.describe "pghero" do
  it "renders pghero home" do
    visit pg_hero_path

    expect(page).to have_current_path(pg_hero_path)
  end
end
