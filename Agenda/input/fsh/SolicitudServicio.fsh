Profile: SolicitudServicio
Parent: ServiceRequest
Id: SolicitudServicio
Title: "Perfil de la Solicitud del Servicio"
Description: "Este es el perfil de la Solicitud del Servicio"

* extension contains Prestaciones named prestaciones 0..1 MS
  * ^short = "Prestación que solicita el paciente." 

* status 1..1
  * ^short = "Estado de la solicitud de servicio."
* status from http://hl7.org/fhir/ValueSet/request-status

* intent 1..1 
  * ^short = "Intención de la solicitud del servicio."
* intent from http://hl7.org/fhir/ValueSet/request-intent 

* priority 1..1
  * ^short = "Indica con qué rapidez se debe atender la ServiceRequest con respecto a otras solicitudes."
* priority from http://hl7.org/fhir/ValueSet/request-priority

* subject 1..1
  * ^short = "La persona que inició la solicitud."
* subject only Reference(Paciente)

* authoredOn 1..1
  * ^short = "Fecha y hora de la solicitud."

Instance: EjemploSolicitudServicio1
InstanceOf: SolicitudServicio
Usage: #example
Title: "Ejemplo Solicitud Servicio 1"
Description: "Ejemplo Solicitud Servicio 1"

* status = #active
* intent = #order
* priority = #routine
* subject = Reference(Patient/EjemploPaciente1)
* authoredOn = "2024-07-20T12:00:00-03:00"
* extension[prestaciones].valueCode = #18

Instance: EjemploSolicitudServicio2
InstanceOf: SolicitudServicio
Usage: #example
Title: "Ejemplo Solicitud Servicio 2"
Description: "Ejemplo Solicitud Servicio 2"

* status = #active
* intent = #order
* priority = #routine
* subject = Reference(Patient/EjemploPaciente2)
* authoredOn = "2024-07-20T12:00:00-03:00"
* extension[prestaciones].valueCode = #21