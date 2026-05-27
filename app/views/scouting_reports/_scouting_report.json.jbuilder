json.extract! scouting_report, :id, :player_name, :position, :team, :evaluation, :grade, :created_at, :updated_at
json.url scouting_report_url(scouting_report, format: :json)
