Profile: Prestador
Parent: Practitioner
Title: "Perfil del Prestador"
Description: "Este Perfil es del prestador con los datos necesarios del prestador para APS"

* name 1..*
  * ^short = "Nombre asociado al paciente" 
  * family 1..1
    * ^short = "Primer Apellido del paciente"
    * extension contains http://hl7.org/fhir/StructureDefinition/humanname-mothers-family named SegundoApellido 0..1

* qualification 1..*
* qualification ^slicing.discriminator.type = #value 
* qualification ^slicing.discriminator.path = "code.text" 
* qualification ^slicing.description = "Debido a que los profeisonales de la salud pueden tener titulo y nform poseer especialidades, es que se ha realizado un slice, con el fin de poder diferenciarlos." 
* qualification ^slicing.rules = #open 
* qualification ^short = "Certificados, títulos y/o Especialidad(es) obtenidas por el Prestador"
* qualification ^definition = "Certificados, nforma y/o especialidades que el Prestador pueda validar"
* qualification contains 
Cert 0..* MS and 
Esp 0..* MS 
* qualification[Cert] ^short = "Especificación de los Títulos o Certificados Profesionales que tiene el Prestador" 
* qualification[Cert] ^definition = "Listado de Títulos o Cetificados Profesionales que tiene el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"
* qualification[Cert].code.coding.system ^short = "El sistema sobre el cual se verificarán los nforma o certificados de los Prestadores"
* qualification[Cert].code.coding.system ^definition = "La url sobre la cual se encuentra el que endPoint para el acceso a  los códigos de nforma y/o certificados de prestadores. El perfil especifica se debe usar la siguiente url: ”https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional”"
* qualification[Cert].code.coding.display 1.. MS 
* qualification[Cert].code.coding.display ^short = "Nombre del titulo o certificado agregado"
* qualification[Cert].code.coding.display ^definition = "Nombre del titulo o certificado agregado. Agregar un poco mas de nformación acerca del item que se esta agregando."
* qualification[Cert].code.text 1.. 
* qualification[Cert].code.text = "Certificado(s)"
* qualification[Cert].issuer ^short = "Organización que entrega el certificado o título"
* qualification[Cert].issuer.display ^short = "Nombre de la organización que entrega certificado o título"
* qualification[Cert].issuer.display ^definition = "Nombre de la organización que entrega el certificado o título válido para ejercer como prestdor. En este elemento solo se puede agregar texto libre"
* qualification[Esp] ^short = "Especificación de la o las  especialidades que posea el prestador"
* qualification[Esp] ^definition = "Listado de especialidades que posee el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente"
* qualification[Esp].identifier ^short = "Identificador de especialidades"
* qualification[Esp].identifier ^definition = "Identificación especialidades profesionales indicando procedencia y casa de estudios"
* qualification[Esp].identifier.value ^short = "Codigo de la especialidad"
* qualification[Esp].code.coding.system ^short = "El sistema sobre el cual se verificarán las especialidades de los Prestadores" 
* qualification[Esp].code.coding.system ^definition = "la url sobre la cual se encuentra el endPoint para el acceso a  los códigos de especialidades de prestadores. El perfil especifica ”https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed”" 
* qualification[Esp].code.coding.display 1.. MS 
* qualification[Esp].code.coding.display ^short = "Nombre de la especialidad"
* qualification[Esp].code.coding.display ^definition = "Nombre la especialidad agregada. Agregar un poco mas de nformación acerca del item que se esta agregando."
* qualification[Esp].code.text 1.. 
* qualification[Esp].code.text = "Especialidad(es)"


Instance: EjemploPrestador1
InstanceOf: Prestador
Usage: #example
Title: "Ejemplo del perfil del prestador 1"
Description: "Ejemplo del prestador 1"

* name.family = "David"
* name.given = "Castillo"

* qualification[0].code.coding[0].system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[0].code.coding[0].code = #30
* qualification[0].code.coding[0].display = "Médico general"
* qualification[0].code.text = "Certificado(s)"

* qualification[1].code.coding[0].system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed"
* qualification[1].code.coding[0].code = #37
* qualification[1].code.coding[0].display = "Medicina interna"
* qualification[1].code.text = "Especialidad(es)"

* qualification[2].code.coding[0].system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSEspecialidadMed"
* qualification[2].code.coding[0].code = #21
* qualification[2].code.coding[0].display = "Geriatría"
* qualification[2].code.text = "Especialidad(es)"


Instance: EjemploPrestador2
InstanceOf: Prestador
Usage: #example
Title: "Ejemplo del perfil del prestador 2"
Description: "Ejemplo del prestador 2"

* name.family = "Antonia"
* name.given = "Cuevas"

* qualification[0].code.coding[0].system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[0].code.coding[0].code = #11
* qualification[0].code.coding[0].display = "Nutricionista"
* qualification[0].code.text = "Certificado(s)"