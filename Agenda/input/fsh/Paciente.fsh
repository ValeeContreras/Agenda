Profile: Paciente2
Parent: CorePacienteCl
Id: Paciente2
Title: "Nuevo Perfil Paciente"
Description: "Nuevo perfil para el paciente"

* name 1..1
* identifier 1..1
* birthDate 1..1
* extension contains Edad named edad 0..1 MS
  * ^short = "Edad del paciente" 
* extension contains Prevision named prevision 1..1 MS
  * ^short = "Previsión paciente" 

Instance: EjemploPacientePrueba1
InstanceOf: Paciente2
Usage: #example
Title: "Ejemplo del perfil del paciente 1"
Description: "Ejemplo del paciente 1."
* name.family = "Valentina Daniela"
* name.given = "Contreras"
* identifier.value = "20706399-1"
* birthDate = "2001-02-10"
* extension[edad].valueInteger = 25
* extension[prevision].valueCode = #01