# Evaluación 1: Base de Datos
* Docente: Sebastián Cabezas Ríos
* Fecha máxima de entrega: 14 de septiembre a las 23:59 horas.
* ***Por cada hora de atraso se restará un punto a su nota final.***
* Email de entrega: profe.sebastiancabezas@gmail.com

## Enunciado del Proyecto: Sistema de Gestión de Rifas

### 1. Objetivo del Sistema
El objetivo es diseñar y modelar una base de datos para un sistema de gestión de rifas que permita a los usuarios (organizadores) administrar el ciclo de vida de sus sorteos, desde la motivación detrás de la rifa hasta la entrega de los premios. El sistema no gestionará dinero directamente, sino que facilitará el proceso de reserva, pago y validación, además de involucrar a patrocinadores y gestionar premios de manera logística.

---

### 2. Requisitos del Negocio y Funcionalidades

#### **Gestión de Rifas:**
* Cada rifa debe tener un **identificador único**, un **nombre**, una **descripción** del premio, un **monto objetivo** y una **fecha límite**.
* **Motivo de la Rifa:** Cada rifa debe estar asociada a un motivo. Este motivo debe ser seleccionable de una lista predefinida (por ejemplo: `Operación médica`, `Compra de medicamentos`, `Viaje deportivo`, `Otro`). Si es "Otro", se debe permitir una descripción detallada.
* **Estados de la Rifa:** El sistema debe gestionar los estados de la rifa: `Activa`, `Finalizada por Monto`, `Finalizada por Fecha`, `Cancelada`, `En Verificación` (para pagos) y `Sorteo Realizado`.

#### **Gestión de Boletos y Pagos (sin manejo de dinero):**
* Cada boleto tendrá un **número único** y un **precio**.
* Los participantes seleccionan uno o más boletos, los cuales quedan en estado de **reserva**.
* Se debe generar y enviar un mensaje automático (por ejemplo, vía WhatsApp) con los datos de una **cuenta bancaria del organizador** para el depósito.
* El organizador puede tener una o más cuentas bancarias registradas. El sistema debe asociar la cuenta bancaria seleccionada a la rifa.
* El participante sube un **comprobante de pago**, que es recibido por el organizador. El organizador debe **verificar manualmente** el pago en su cuenta bancaria.
* Una vez verificado, el organizador cambia el estado del boleto a `Pagado`, y el boleto queda activado para el sorteo. Si no se paga en un tiempo de espera (a definir), el boleto vuelve a estar disponible.

#### **Gestión de Patrocinadores (Auspiciadores):**
* El sistema debe registrar **patrocinadores**, que pueden ser personas o empresas.
* Se debe registrar la **contribución** del patrocinador: puede ser un premio o una contribución de servicio (por ejemplo, un DJ, un presentador, etc.).
* Para los patrocinadores de servicios, se debe poder mostrar su información de contacto (nombre, perfil de Instagram, página web, etc.).

#### **Gestión de Premios y Entrega:**
* **Lista de Premios:** Una rifa puede tener uno o más premios (ej: bicicleta, computadora, tarjeta de regalo).
* **Empresa de Transporte:** Los premios físicos son gestionados por una **empresa de transporte** externa (por ejemplo, Mercado Libre).
* **Estados del Premio:** Los premios deben tener estados: `En Verificación` (autenticidad y realidad), `Disponible para Envío`, `En Tránsito`, `Entregado`.
* **Tarjetas de Regalo (Gift Cards):** Para premios de servicios (ej: "corte de pelo"), se debe generar una tarjeta de regalo virtual con un **código de validación** único, que pueda ser escaneado con un **código QR**.
* El sistema debe registrar la validez de estas tarjetas de regalo, asociadas a una rifa y un premio específico.

#### **Datos Demográficos y de Contacto:**
* El sistema debe capturar **datos demográficos** (ej: edad, género, ubicación) de los **organizadores**, **participantes** y **patrocinadores**.
* Se debe registrar información de contacto: nombre, teléfono, email, etc.

---

### 3. Requisitos para el Modelado de Datos

El modelo de base de datos debe cumplir con las siguientes directrices:

* **Identificación de Entidades:** Debes identificar todas las entidades principales del sistema (`Rifa`, `Participante`, `Boleto`, `Premio`, `Patrocinador`, `EmpresaTransporte`, `CuentaBancaria`, etc.).
* **Definición de Atributos:** Para cada entidad, debes listar sus atributos, especificando el tipo de dato y si son obligatorios (not null).
* **Identificación de Claves:** Debes definir las **claves primarias** (PK) y **claves foráneas** (FK) para representar las relaciones entre las entidades.
* **Normalización:** El modelo resultante debe estar en **Tercera Forma Normal (3FN)**. Esto significa que no debe haber dependencias transitivas ni dependencias parciales entre los atributos. Para lograr esto, asegúrate de:
    * **Primera Forma Normal (1FN):** Eliminar grupos repetitivos y asegurar que cada atributo contenga un solo valor atómico.
    * **Segunda Forma Normal (2FN):** Asegurar que todos los atributos que no son clave dependan completamente de la clave primaria.
    * **Tercera Forma Normal (3FN):** Asegurar que no haya dependencias transitivas, es decir, que los atributos que no son clave no dependan de otros atributos que no son clave.

---

### 4. Entregables del Proyecto

1.  **Diagrama Entidad-Relación (DER):** Un diagrama que represente visualmente las entidades, sus atributos y las relaciones entre ellas.
2.  **Modelo Relacional:** Una descripción textual del modelo con la notación `NombreTabla(PK_Atributo, FK_Atributo1, Atributo2, ...)` para cada tabla.
3.  **Justificación de la Normalización:** Explicación detallada de cómo el diseño cumple con la Tercera Forma Normal (3FN), identificando y resolviendo cualquier dependencia transitiva o parcial que se presente en el proceso.

---

### Deberá compartir al docente

Envíe un correo a profe.sebastiancabezas@gmail.com . El correo debe tener como asunto: *UM-Bases de Datos I-Nombre y Apellido

Todos los archivos deben tener las iniciales de su nombre: Por ejemplo: evaluacion_1_scr.zip

El archivo comprimido general debe contener:

1. Archivos Data Modeler (Comprimir archivo y carpeta en .zip [No se admitirá otro formato de compresión]) 
2. Diagrama Entidad Relación en PDF
3. Diagrama Relacional en PDF

*No se admitirá otro formato de compresión*

**¡Éxito en su evaluación!**
