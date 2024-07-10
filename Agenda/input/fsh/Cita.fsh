Profile: Cita
Parent: Appointment
Title: "Perfil Cita"
Description: "Una reserva de un evento de atención médica entre pacientes, médicos, personas relacionadas y/o dispositivos para una fecha/hora específica. Esto puede resultar en uno o más Encuentros."

* extension contains Prestaciones named prestaciones 1..* MS
  * ^short = "Servicio que se realizara durante la cita" 

* extension contains ApellidoServicio named apellidoservicio 1..1 MS
  * ^short = "Edad del paciente" 

* specialty 0..*
  * ^short = "La especialidad de un profesional que se requeriría para realizar el servicio solicitado en esta cita"
//* specialty.coding.system = "http://hl7.org/fhir/ValueSet/c80-practice-codes"
 
* participant 1..*
* participant.actor only Reference(Practitioner)
  * ^short = "Nombre del prestador que dara la cita médica"

* start 1..1
  * ^short = "Cuando se realizará la cita"

Instance: EjemploCita1
InstanceOf: Cita
Usage: #example
Title: "EjemploCita"
Description: "Aca esta el ejemplo de la cita"

* status = #waitlist
* specialty.coding.system = "http://snomed.info/sct"
* specialty.coding.code = #408467006
* participant.actor = Reference(Practitioner/EjemploPrestador1)
* participant.status = #accepted
* extension[Prestaciones].valueCode = #2
* extension[ApellidoServicio].valueString = "Comentario de la cita"
* start = "2024-07-25T12:30:00-03:00" 
* end = "2024-07-25T12:50:00-03:00"

Instance: EjemploCita2
InstanceOf: Cita
Usage: #example
Title: "EjemploCita"
Description: "Aca esta el ejemplo de la cita"

* status = #proposed
* specialty.coding.system = "http://snomed.info/sct"
* specialty.coding.code = #408467006
* participant.actor = Reference(Practitioner/EjemploPrestador2)
* participant.status = #accepted
* extension[Prestaciones].valueCode = #2
* extension[ApellidoServicio].valueString = "Comentario de la cita"
* start = "2024-07-25T15:30:00-03:00" 
* end = "2024-07-25T13:10:00-03:00"