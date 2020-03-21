incident_status = [
    [1,	"Open",	"Incident is in the process of being resolved"],
    [2,	"Closed", "Incident is resolved"]
]



incident_status.each do |id, status, description|
    IncidentStatus.create(id: id, status: status, definition: description)
end