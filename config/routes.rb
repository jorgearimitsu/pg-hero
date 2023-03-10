Rails.application.routes.draw do
  mount PgHero::Engine => "pghero", at: "/pghero"
end
