### Contexto
Esta guía de implementación es diseñada para el uso de datos enfocados en la Atención Primaria de Salud (APS) para Agenda.
<br>

### Introducción
En la region de Valparaiso según la proyeccion del CENSO 2017, para el año 2023 se estimaba que en la región tendría una población total de 320.816 personas. De este grupo, aproximadamente el 81% está inscrito en la APS. La cual se puede ver segmentada por grupo etario en la siguiente imagen:
<br>

**aca va el grafico**

<br>
Cada uno de estos grupos etarios enfrenta dificultades particulares para acceder a la información sobre su salud. En la actualidad, al acudir a las APS para agendar citas médicas es bastante tedioso y, en muchos casos, involucra largas esperas, especialmente para los adultos mayores que pueden enfrentarse a condiciones climáticas adversas y riesgos de seguridad mientras aguardan en filas desde la madrugada para ser atendidos en los Centros de Salud Familiar (CESFAM). En relación a las dificultades para los adultos que, en su mayoría, están activos laboralmente y deben gestionar permisos en sus trabajos para acudir a las consultas médicas, lo que no siempre es posible.
<br>
A través de los perfiles se podra realizar operaciones para facilitar la solicitud de una hora médica en las APS.

### Contenido de la Guía
Esta guía de implementación se estructura en base al menú de la parte superior de la siguiente manera:
<br>

* [Index](Index.html): Página de Bienvenida a la Guía.
* [Objetivos](Objetivos.html): Información General sobre los objetivos de esta Guía
* [Casos de Uso](CasosDeUsos.html): Información detallada de los casos de uso, sus actores, y la secuencia de transacciones.
* [Seguridad](Seguridad.html): Infromación sobre la seguridad.
* [Resumen de Artefactos](artifacts.html): Describe todos los artefactos que son parte de esta GI, separados en Estructura de Perfiles, Extensiones, Value Sets y Ejemplos.
<br>

### Disposición de las paginas
Esta Guía a sido realizada gracias a los siguiente enlaces:
<br>

- [Capítulo Chileno de HL7, HL7 Chile](http://hl7chile.cl)
- [FHIR R4](http://hl7.org/fhir/)
- [FHIR Shorthand Documentation](https://build.fhir.org/ig/HL7/fhir-shorthand) 
- [FHIR Shorthand documentation code repository](https://github.com/HL7/fhir-shorthand)

<p>The source code for this Implementation Guide can be found on <a href="https://github.com/openhie/Training-Solution-1">OpenHIE GitHub</a>.</p>

  <h3>Cross Version Analysis</h3> <a name="cross-version-analysis"></a>
  <div>
    {% include cross-version-analysis.xhtml %}
  </div>

  <h3>Dependency Table</h3> <a name="dependency-table"></a>
  <div>
    {% include dependency-table.xhtml %}
  </div>

  <h3>Globals Table</h3> <a name="globals-table"></a>
  <div>
    {% include globals-table.xhtml %}
  </div>

  <h3>IP Statements</h3> <a name="ip-statements"></a>
  <div>
   {% include ip-statements.xhtml %}
  </div>

  <h3>Intellectual Property Considerations</h3>  <a name="ip"> </a>
  <p>
    While this implementation guide and the underlying FHIR are licensed as public domain, this guide may include examples making use of terminologies such 
    as LOINC, SNOMED CT and others which have more restrictive licensing requirements. Implementers should make themselves familiar with licensing and 
    any other constraints of terminologies, questionnaires, and other components used as part of their implementation process. In some cases, 
    licensing requirements may limit the systems that data captured using certain questionnaires may be shared with.
  </p>

  <h3>Disclaimer</h3>  <a name="disclaimer"> </a>
  <p>
    This specification is provided without warranty of completeness or consistency, and the official publication supersedes this draft.
    No liability can be inferred from the use or misuse of this specification, or its consequences.
  </p>
</div>




**Esta Guía de Implementación ha sido posible gracias a las atentas contribuciones de las siguientes personas:**
<br>
* Valentina Contreras, Tesista
* Cesar Galindo, Profesor Guia
* John Diaz, Co-Guia