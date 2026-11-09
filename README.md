# 🐮 Bye Bye Tick — Alerta Ganadera Inteligente (v4.0)
### Aplicativo Web Interactivo para el Diagnóstico Visual de Garrapatas y Selección de Tratamiento Acaricida en Ganado Bovino

![Versión](https://img.shields.io/badge/Versi%C3%B3n-4.0.0-emerald?style=for-the-badge)
![IA](https://img.shields.io/badge/Binarizaci%C3%B3n_B%2FN-Fondo_Blanco_%2B_Garrapatas_Negras-blue?style=for-the-badge)
![Bioclima](https://img.shields.io/badge/Bioclima-T%C2%B0_%26_Humedad_Exactas-amber?style=for-the-badge)
![Compatibilidad](https://img.shields.io/badge/Dispositivos-M%C3%B3vil_%26_Escritorio-purple?style=for-the-badge)
![Licencia](https://img.shields.io/badge/Plataforma-GitHub_Pages_Ready-success?style=for-the-badge)

---

## 📌 Resumen del Proyecto

**Bye Bye Tick** es un aplicativo web interactivo, responsivo y de alto impacto técnico diseñado para ofrecer a ganaderos, médicos veterinarios y técnicos zootecnistas un **diagnóstico visual instantáneo del nivel de infestación por garrapatas (*Rhipicephalus microplus*) en ganado bovino**.

A partir del análisis de fotografías tomadas en campo mediante cámaras de smartphones o computadores, el sistema implementa un completo pipeline de **Procesamiento Digital de Imágenes (PDI) y Visión Artificial Asistida**:

1. **📄 Post-Procesamiento Binarizado Real (Fondo Blanco con Garrapatas Negras)**:
   - Convierte la fotografía en una máscara de alto contraste donde la dermis/pelaje se transforma en **Blanco Puro (`#FFFFFF`)** y cada garrapata queda proyectada en una silueta nítida de **Negro Carbón (`#121212`)**.
   - Permite al usuario y al evaluador calibrar con precisión visual qué está reconociendo el algoritmo.
   - Incluye vista comparativa **🌓 Split 50/50** (mitad foto original y mitad binarizada en blanco y negro) y botón de descarga directa en formato PNG.
2. **🧹 Filtro Morfológico Anti-Pelos (Apertura 3x3)**:
   - Aplica erosión morfológica para desintegrar hebras de pelo fino (1-2 px de grosor) y polvo cuticular que causaban falsos positivos.
   - Aplica dilatación morfológica para consolidar el núcleo esferoide/ovoide de los parásitos.
3. **🛠️ Asistencia Activa para Fotos Reales**:
   - **Deslizador de Umbral Binarizado (B/N)**: Calibración dinámica del contraste entre la piel y los cuerpos de los ácaros.
   - **Selector de Pelaje Bovino**: Alterna entre *Pelaje Oscuro* (negro/marrón) y *Pelaje Claro* (blanco/crema) para invertir la polaridad de reflectancia espectral.
   - **Marcado Táctil de Corrección (1 Toque)**: Si la cámara omitió una garrapata en una zona sombría, un toque en pantalla la suma al instante; si marcó un pelo o lunar, tocar la mirilla la elimina.
   - **Cuadrante 10x10 cm draggable**: Permite aislar un parche limpio de piel y excluir pastos, cielos o tubos del corral.
4. **🔬 Clasificación por Estadios Clínicos**:
   - Segmenta y contabiliza: *Hembras Repletas (Teleoginas > 5 mm)*, *Adultas Jóvenes / Semi* y *Ninfas / Inmaduras*.
5. **🌡️ Telemetría Meteorológica Exacta**:
   - Ingreso manual de Temperatura (°C) y Humedad Relativa (%) reales.
   - Cálculo del **Índice THI (Thom)** de estrés calórico y **Días Dinámicos de Descanso de Potrero**.
6. **💊 Motor de Prescripción Farmacológica (Random Forest / Árboles de Decisión)**:
   - Asigna la molécula óptima cruzando severidad (Grado 1 Leve, Grado 2 Moderado, Grado 3 Severo), propósito (Leche, Carne o Doble Propósito) y peso vivo en kg.
   - Bloqueo estricto de Ivermectina/Doramectina en vacas de leche por tiempo de retiro en grasa láctea.
   - Regla obligatoria de rotación química anual para prevenir resistencia acaricida.
7. **📄 Reporte Veterinario Completo**:
   - Ficha técnica lista para imprimir o guardar como PDF (`@media print` optimizado) y persistencia en historial local.

---

## 📸 ¿Cómo Ayudar al Algoritmo a Contar con Precisión en Fotos Reales?

Para lograr detecciones de máxima exactitud en fotografías tomadas a campo abierto:

### 1. Herramientas en Pantalla (Dentro de la App)
* **Activa la vista "📄 Fondo Blanco (B/N)":** Verás inmediatamente cómo el algoritmo aísla los parásitos del pelaje.
* **Mueve el "Umbral Binarización (B/N)":** Si la foto tiene sombras, desliza el umbral hasta que los cuerpos de las garrapatas se vean negros sólidos y el fondo quede completamente blanco.
* **Ajusta el "Filtro Tamaño Mínimo":** Si el animal tiene pelo largo, sube el tamaño mínimo (ej. 10px a 14px) para descartar los pelos sin afectar a las garrapatas.
* **Indica el Pelaje Bovino:** Pulsa `Oscuro / Negro` si la vaca es Angus/Brangus/Cebú negro, o `Claro / Blanco` si es Brahman/Gyr/Holstein claro.
* **Usa el Toque Rápido:** Toca cualquier garrapata omitida para sumarla, o toca una marca errónea para borrarla.

### 2. Tips para la Cámara del Celular en el Potrero
* **Distancia macro:** Toma la foto a **15 a 25 cm** de distancia perpendicular (90°) a la piel del animal.
* **Apartar mechones:** En razas de pelo largo, despeja con los dedos los mechones hacia los lados para dejar visible la dermis.
* **Evitar flash directo y sol cenital:** El flash genera reflejos blancos que parten el cuerpo de la garrapata; la luz difusa en la mañana o la sombra de la manga de manejo ofrece el mejor resultado.
* **Encuadre limpio:** Evita incluir el pasto o el suelo de fondo, ya que la sobreexposición hace que la cámara oscurezca el cuerpo del animal.

---

## 🚀 Cómo Desplegar en GitHub Pages (Guía para el Estudiante)

Para que el profesor pueda abrir el aplicativo desde su computadora o celular mediante un enlace público de internet:

### Opción 1: Subida Directa desde la Web de GitHub (La más rápida y fácil)
1. Ve a [GitHub.com](https://github.com) e inicia sesión con tu cuenta.
2. Haz clic en el botón verde **"New"** (Nuevo Repositorio).
3. Nómbralo: `Bye-Bye-Tick` o `Alerta-Ganadera-Inteligente`.
4. Márcalo como **Public** y haz clic en **Create repository**.
5. En la pantalla siguiente, haz clic en **"uploading an existing file"** (subir archivos existentes).
6. Arrastra los siguientes archivos y carpetas del proyecto:
   - `index.html`
   - `README.md`
   - Carpeta `css/` (con `styles.css`)
   - Carpeta `js/` (con `data.js`, `samples.js`, `vision.js`, `recommendation.js`, `app.js`)
7. Haz clic en **Commit changes**.
8. Ve a la pestaña **Settings** (Configuración) de tu repositorio.
9. En el menú lateral izquierdo, haz clic en **Pages**.
10. En **Build and deployment > Branch**, selecciona la rama `main` y la carpeta `/ (root)`, luego haz clic en **Save**.
11. ¡Listo! En 1 o 2 minutos, GitHub te dará un enlace como:
    `https://tu-usuario.github.io/Bye-Bye-Tick/`
    Ese es el enlace que puedes enviar a tu profesor para que lo abra desde su PC o teléfono celular.

---

## 📱 Muestras Demostrativas de Campo

El profesor puede evaluar el funcionamiento de inmediato con las 4 muestras integradas:
* **🟢 Muestra 1: Oreja Bovina (Leve - 8 garrapatas):** Pabellón auricular con 8 parásitos aislados.
* **🟡 Muestra 2: Pliegue Inguinal / Ubre (Moderada - 24 garrapatas):** Base de la ubre y bragada con 24 parásitos en racimos naturales.
* **🔴 Muestra 3: Lomo y Paleta (Severa - 48 garrapatas):** Costillar de novillo con infestación masiva crítica de 48 parásitos.
* **🐂 Muestra 4: Cuello y Papada Cebú (Moderada - 36 garrapatas):** Bovino Brahman con 36 parásitos en pliegues cutáneos.
* **📱 Tomar con Cámara:** En smartphones, abre directamente la cámara del celular.
* **📁 Subir Mi Foto:** Permite al usuario cargar cualquier fotografía tomada en campo.

---

## 🌡️ Módulo Bioclimático & Fórmulas Científicas

### 1. Índice de Confort Térmico Ganadero (THI - Thom)
$$\text{THI} = 0.8 \times T + \frac{\text{HR}}{100} \times (T - 14.4) + 46.4$$
- $\text{THI} < 72$: Confort térmico normal.
- $72 \le \text{THI} < 79$: Alerta de estrés calórico.
- $79 \le \text{THI} < 84$: Peligro de estrés térmico (caída en producción lechera).
- $\text{THI} \ge 84$: Emergencia crítica por golpe de calor.

### 2. Días Dinámicos de Descanso de Potrero
$$\text{Días de descanso} = \text{round}\left( \frac{1150}{T \times (0.8 + \frac{\text{HR}}{250})} \right)$$
Ajustado zootécnicamente para garantizar la muerte por inanición de las larvas de *Rhipicephalus microplus* según la tasa de evaporación y calor ambiental.

---

## 🧪 Base Científica y Farmacológica (Sección 8)

| Principio Activo | Familia Química | Vía | Retiro Leche | Retiro Carne | Apto Vacas en Ordeño |
| :--- | :--- | :--- | :---: | :---: | :---: |
| **Amitraz 12.5%** | Amidina | Aspersión | **0 días** | 14 días | **SÍ (Primera elección)** |
| **Flumetrina 1%** | Piretroide Tipo II | Pour-on | **0 días** | 5 días | **SÍ** |
| **Ivermectina 3.15% LA** | Lactona Macrocíclica | Subcutánea | **PROHIBIDO (999d)** | 122 días | **NO** (Exclusivo Ceba/Carne) |
| **Doramectina 1%** | Lactona Macrocíclica | Subcutánea | **NO AUTORIZADO** | 35 días | **NO** |
| **Fluazurón 2.5%** | Inhibidor de Quitina (IDQ) | Pour-on | **NO AUTORIZADO** | 42 días | **NO** |
| **Metarhizium anisopliae**| Biológico (Hongo) | Aspersión | **0 días** | 0 días | **SÍ (100% Ecológico)** |

---

## 📊 Estructura de Archivos del Proyecto

```
Seminario3/
├── index.html              # Aplicación web completa y responsiva para GitHub Pages
├── README.md               # Documentación técnica y guía de despliegue
├── css/
│   └── styles.css          # Diseño responsivo móvil-escritorio, suite de conteo y PDF
└── js/
    ├── data.js             # Base de datos relacional (principios activos y reglas veterinarias)
    ├── samples.js          # Catálogo de 4 muestras fotográficas HD
    ├── vision.js           # Motor de binarización adaptativa B/N y segmentación morfológica
    ├── recommendation.js   # Algoritmo Random Forest con variables bioclimáticas dinámicas
    └── app.js              # Controlador central de eventos, renderizado e historial
```

---

## 👨‍🔬 Autores & Agradecimientos
Proyecto desarrollado para la asignatura de **Seminario de Proyecto de Grado 2026** bajo los lineamientos de la propuesta *Alerta Ganadera Inteligente (Bye Bye Tick)*.
