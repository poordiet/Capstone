incident_status = [
    ["Open",	"Incident is in the process of being resolved"],
    ["Closed", "Incident is resolved"]
]



incident_status.each do | status, description|
    IncidentStatus.create( status: status, definition: description)
end