Profile: SolicitudServicio
Parent: ServiceRequest
Id: SolicitudServicio
Title: " Perfil de la Solicitud del Servicio"
Description: "Solicitud del Servicio"

* status 1..1
* status from http://hl7.org/fhir/ValueSet/request-status

* intent 1..1 
* intent from http://hl7.org/fhir/ValueSet/request-intent 

* category 1..1
* category from http://hl7.org/fhir/ValueSet/servicerequest-category

* priority 1..1
* priority from http://hl7.org/fhir/ValueSet/request-priority

* subject 1..1
* subject only Reference(Paciente)

* authoredOn 1..1

Instance: EjemploSolicitudServicio1
InstanceOf: SolicitudServicio
Usage: #example
Title: "EjemploSolicitudServicio1"
Description: "algo"

* status = #active
* intent = #order
* category = #387713003
* priority = #routine
* subject = Reference(Patient/EjemploPaciente1)
* authoredOn = "2024-07-20T12:00:00-03:00"

Instance: EjemploSolicitudServicio2
InstanceOf: SolicitudServicio
Usage: #example
Title: "EjemploSolicitudServicio1"
Description: "algo"

* status = #active
* intent = #order
* category = #387713003
* priority = #routine
* subject = Reference(Patient/EjemploPaciente2)
* authoredOn = "2024-07-20T12:00:00-03:00"