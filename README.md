# Proyecto Final: Base de Datos Relacional - Empresa de Mensajería Vía Veloz

**Descripción del caso:** La empresa de mensajería **Vía Veloz,** requiere una base de datos relacional en donde se almacene la operación logística de sus envíos a nivel país, permitiendo el control total de los paquetes desde su recepción hasta la entrega final, incluyendo la información de los responsables del transporte.

**Requerimientos de la base de datos:** Para esto desean tener un lugar en donde consultar toda la información de la empresa, sus puntos de operación y el flujo de los paquetes. Se requiere registrar las sucursales involucradas en el proceso, las cuales incluirán el nombre de la sucursal de origen y la sucursal de destino del envío.

Para la información de los clientes y el paquete se desea tener lo siguiente: nombre del remitente, número de cédula del remitente, nombre del receptor y número de cédula del receptor. Sobre el paquete, es indispensable registrar el ID único del paquete, la fecha de ingreso al sistema y la fecha de entrega efectiva al destinatario.

Finalmente, para el control del transporte y personal, la empresa desea tener a disposición el vehículo que realiza la entrega (tipo de vehículo) y su número de placa oficial. Asimismo, se debe incluir la información del chofer asignado, registrando su nombre completo, número de cédula y el tipo de licencia que posee para operar la unidad.

| **#** | **Nombre de la entidad** | **Descripción** | **Atributo clave** | **Relación con otras entidades** | **¿Cuál regla de integridad aplica?** | **Comentarios** |
| --- | --- | --- | --- | --- | --- | --- |
| 1 | Sucursal | Almacena los puntos físicos de operación a nivel país. | ID\_Sucursal | Con Paquete (1:N) | Segunda regla | Esencial para el flujo de paquetes. |
| 2 | Remitente | Persona que realiza el envío del paquete. | Cedula\_Rem | Con Paquete (1:N). | Segunda regla | Registra nombre y cédula. |
| 3 | Receptor | Persona que recibe el paquete en destino. | Cedula\_Rec | Con Paquete (1:N). | Segunda regla | Registra nombre y cédula del destinatario. |
| 4 | Paquete | Objeto central del envío con sus fechas de control. | ID\_Paquete | Con Sucursal, Remitente, Receptor (N:1). | Segunda regla | Debe tener ID único y fechas de ingreso/entrega. |
| 5 | Vehículo | Unidad de transporte para la logística de envíos. | Placa | Con Paquete (1:N) y Chofer (1:1). | Segunda regla | Incluye placa oficial y tipo. |
| 6 | Chofer | Personal encargado de operar la unidad de transporte. | Cedula\_Chof | Con Vehículo (1:1). | Primera regla | Requiere nombre completo y tipo de licencia. |
| 7 | Estado\_Envio | Control de las fases del paquete (Recibido, En tránsito, Entregado). | ID\_Estado | Con Paquete (1:N). | Segunda regla | Permite el "control total" solicitado. |
| 8 | Tipo\_Paquete | Clasifica el paquete por peso o contenido (ej: Documentos, Frágil, Carga pesada). | ID\_Tipo\_Paq | Con Paquete (1:N). | Segunda regla | Ayuda a determinar el tipo de vehículo necesario. |
| 9 | Incidencia | Registro de novedades o problemas durante el trayecto (retrasos, daños, etc.). | ID\_Incidencia | Con Paquete (N:1). | Segunda regla | Esencial para la auditoría y atención al cliente. |

**Nomenclatura:**

* **Nombre de la entidad:** especificar el nombre de la tabla o entidad.
* **Descripción:** breve explicación de la entidad y su propósito en la base de datos.
* **Atributo clave:** listar el atributo clave que definirá la entidad.
* **Relación con otras entidades:** indicar con qué entidades se relaciona y cómo (uno a uno, uno a muchos, muchos a muchos).
* **¿Cuál regla de integridad aplica?:** Indique si aplica la primera, segunda o tercera regla de integridad.
* **Comentarios:** notas adicionales u observaciones importantes.

**Modelo Entidad Relacion:**
[https://miro.com/app/board/uXjVGDajYl8=/?share\_link\_id=273616973253](https://miro.com/app/board/uXjVGDajYl8%3D/?share_link_id=273616973253)

## Modelo Relacional de Empresa Mensajeria Via Veloz

<!-- Tabla 1: Sucursal -->
<table>
  <thead>
    <tr>
      <th colspan="3" align="center">Sucursal</th>
    </tr>
    <tr>
      <th>ID_Sucursal</th>
      <th>Nombre</th>
      <th>Destino_Envio</th>
    </tr>
  </thead>
</table>

<!-- Tabla 2: Tipo_Paquete -->
<table>
  <thead>
    <tr>
      <th colspan="2" align="center">Tipo_Paquete</th>
    </tr>
    <tr>
      <th>ID_Tipo_P</th>
      <th>Descripcion</th>
    </tr>
  </thead>
</table>

<!-- Tabla 3: Estado_Envio -->
<table>
  <thead>
    <tr>
      <th colspan="2" align="center">Estado_Envio</th>
    </tr>
    <tr>
      <th>ID_Estado</th>
      <th>Descripcion</th>
    </tr>
  </thead>
</table>

<!-- Tabla 4: Remitente -->
<table>
  <thead>
    <tr>
      <th colspan="3" align="center">Remitente</th>
    </tr>
    <tr>
      <th>Ced_Remitente</th>
      <th>Nombre</th>
      <th>Num_TEL</th>
    </tr>
  </thead>
</table>

<!-- Tabla: Receptor -->
<table>
  <thead>
    <tr>
      <th colspan="3" align="center">Receptor</th>
    </tr>
    <tr>
      <th>Ced_Receptor</th>
      <th>Nombre</th>
      <th>Num_TEL</th>
    </tr>
  </thead>
</table>

<!-- Tabla: Chofer -->
<table>
  <thead>
    <tr>
      <th colspan="4" align="center">Chofer</th>
    </tr>
    <tr>
      <th>CED_Chofer</th>
      <th>Nombre</th>
      <th>Apellido</th>
      <th>Licencia</th>
    </tr>
  </thead>
</table>

<!-- Tabla: Vehiculo -->
<table>
  <thead>
    <tr>
      <th colspan="3" align="center">Vehiculo</th>
    </tr>
    <tr>
      <th>Placa</th>
      <th>Tipo_Vehiculo</th>
      <th>FK_CED_Chofer</th>
    </tr>
  </thead>
</table>

<!-- Tabla: Paquete -->
<table>
  <thead>
    <tr>
      <th colspan="9" align="center">Paquete</th>
    </tr>
    <tr>
      <th>ID_Paquete</th>
      <th>Fecha_Ingreso</th>
      <th>Fecha_Envio</th>
      <th>Hora_Salida</th>
      <th>FK_ID_Tipo_P</th>
      <th>FK_ID_Sucursal</th>
      <th>FK_Ced_Remitente</th>
      <th>FK_Ced_Receptor</th>
      <th>FK_Placa_Vehiculo</th>
      <th>FK_ID_Estado</th>
    </tr>
  </thead>
</table>

<!-- Tabla: Incidencia -->
<table>
  <thead>
    <tr>
      <th colspan="3" align="center">Incidencia</th>
    </tr>
    <tr>
      <th>ID_Incidencia</th>
      <th>Descripcion</th>
      <th>FK_ID_Paquete</th>
    </tr>
  </thead>
</table>


### 🗄️ Base de datos y Consultas
Para la creación de la estructura relacional, restricciones y datos de prueba, puedes revisar el archivo de código fuente en el siguiente enlace:
- **[💾 Descargar / Ver Script SQL de la Base de Datos](./Proyecto_Via_Veloz%20_Script.sql)**
