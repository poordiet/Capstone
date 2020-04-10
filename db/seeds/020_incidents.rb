incidents = [
    [2,2,"Flynn bit the groomer while they were trimming his nails. Peek-A-Boo grooming paid $150 to cover the groomer's doctor's visit",150],
    [56,2,"Peanut had an allergic reaction to the shampoo used to bathe her, Peek-A-Boo Grooming covered the vet bill",60.62 ],
    [12,2,"Oreo got scared when we turned on the trimmer and bit the groomer, the bite healed on its own and there was no doctor visit involved",],
    [98,3,"Customer was unhappy with the cut provided and refused to pay for our services, we have filed a police report and have contacted lawyer",],
    [14,1,"Oreo is very energetic and was moving a lot while grooming. The groomer accidently cut his ear when trimming his face. Milo went to the vet for a couple of stitches. We are waiting for the owner to bring the vet bill in as we agreed to cover the charges",]
]



incidents.each do |grooming_appointment_id, incident_status_id, incident_notes, incident_cost|
    Incident.create(grooming_appointment_id: grooming_appointment_id, incident_status_id: incident_status_id, incident_notes: incident_notes, incident_cost: incident_cost)
end
