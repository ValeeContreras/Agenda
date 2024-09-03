Profile: RolPrestador
Parent: PractitionerRole
Id: RolPrestador
Title: "Perfil del Rol del Prestador"
Description: "Este es el perfil del rol del prestador"

* practitioner 1..1
* practitioner only Reference(Prestador)
* practitioner ^short = "Prestador"

* organization 1..1
* organization only Reference(Organizacion)
* organization ^short = "Nombre de la Organización"

* extension contains Servicios named servicios 1..* MS
  * ^short = "Servicio del prestador" 

//* healthcareService 1..*
//* healthcareService only Reference(HealthcareService)
//* healthcareService ^short = "Servicio del prestador que realizara la cita medica"

Instance: EjemploRolPrestador
InstanceOf: RolPrestador
Usage: #example
Title: "EjemploRolPrestador"
Description: "Aca esta el ejemplo del rol prestador"

* practitioner = Reference(Practitioner/EjemploPrestador1)
* organization = Reference(Organization/EjemploOrganizacion)
* extension[servicios].valueCode = #1
//* healthcareService = Reference (HealthcareService/EjemploServicioDeSalud)