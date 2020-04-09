incident_status = [
    ["Open",	"Incident is in the process of being resolved"],
    ["Closed", "Incident is resolved"],
    ["Open-High Rish", "Incident is in the process of being resolved and poses a significant business risk"],
    ["Requires Follow up", "Incident is resolved, but follow up with parties involved is necessary"]
]



incident_status.each do | status, description|
    IncidentStatus.create( status: status, definition: description)
end