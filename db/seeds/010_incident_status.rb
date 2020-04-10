incident_status = [
    ["Open",	"Incident is in the process of being resolved"],
    ["Closed", "Incident is resolved"],
    ["Under Litigation", "Incident has gone resulted in a court case"]
    
]



incident_status.each do | status, description|
    IncidentStatus.create( status: status, definition: description)
end