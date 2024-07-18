Profile: CitaRespuesta
Parent: AppointmentResponse
Title: "Perfil de la Respuesta a la cita."
Description: "Una respuesta a una solicitud de cita para un paciente y/o médico(s), como una confirmación o un rechazo."

* appointment only Reference(Appointment)
* appointment
  * ^short = "Referencia a la cita médica"

* start 0..1
  * ^short = "Nueva hora de cita solicitada"
  * ^definition = "Appointment.start: Fecha/Hora en que se realizará la cita o la nueva hora de inicio solicitada."  

* actor only Reference(Patient)
  * ^short = "Paciente que responde si rechaza o acepta la hora de la cita medica"

* participantStatus 1..1
  * ^short = "Estado del paciente si rechaza o acepta la cita"
  * ^definition  = "AppointmentResponse.participantStatus: Estado de participación del participante. Cuando el estado es rechazado o tentativo si los horarios de inicio/finalización son diferentes a los de la cita, entonces estos horarios deben interpretarse como un cambio de horario solicitado. Cuando el estado es aceptado, los horarios pueden ser la hora de la cita (como confirmación de la hora) o pueden estar vacíos."

Instance: EjemploRespuestaCita1
InstanceOf: CitaRespuesta
Usage: #example
Title: "Ejemplo Respuesta a la Cita del paciente 1"
Description: "Ejemplo de la respuesta de la cita del paciente 1"

* appointment = Reference(Appointment/EjemploCita1) 
* participantStatus = #accepted
* actor = Reference(Patient/EjemploPaciente1)

Instance: EjemploRespuestaCita2
InstanceOf: CitaRespuesta
Usage: #example
Title: "Ejemplo Respuesta a la Cita del paciente 1"
Description: "Ejemplo de la respuesta de la cita del paciente 2"

* appointment = Reference(Appointment/EjemploCita2) 
* participantStatus = #accepted
* actor = Reference(Patient/EjemploPaciente2)