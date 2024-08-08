# AudioPlayer Plugin for OJS

## Description
The AudioPlayer Plugin adds an audio player for MP3 (.mpeg) files to your Open Journal Systems (OJS) installation. This plugin allows audio files to be played directly from the browser, enhancing accessibility and user experience.

## Features
- Integrated audio player for MP3 files.
- Playback speed control (0.5x, 1x, 1.5x, 2x).
- Support for dark mode.
- Translations in English and Spanish.

## Installation
1. Download the file `audioplayer.tar.gz`.
2. Log in to your OJS and go to the Control Panel.
3. In the left menu, find the "Website" section and click on it.
4. In the "Plugins" section, look for the option "Upload a New Plugin" and click on it.
5. A section will appear where you can upload your file. Click on "Upload File" and select the `audioplayer.tar.gz` file you downloaded earlier.
6. Once the upload is complete, save and wait for the process to finish.
7. After the installation is complete, find the plugin in the same section. Once you find it, check the box to enable it, and it will be ready for use.


## Usage
Once installed and enabled, the plugin will integrate into the article and issue presentation pages. You will see an audio player on the galley pages with controls to play, skip forward, rewind, and adjust playback speed.

To upload an audio file, follow these steps:
1. **Upload the Audio File:** Do this in the same way you upload a galley with a PDF file or any other file. This is done in the OJS administration panel.
2. **Publish the File:** Once published, the audio file will appear in the OJS interface like any other file.
3. **Access the Player:** Clicking on the audio file will display the audio player on the page, allowing you to play, skip, rewind, and adjust the speed of the audio.

## Player Controls
- **Play/Pause:** Controls audio playback.
- **Speed Control:** Adjusts playback speed between 0.5x, 1x, 1.5x, and 2x.
- **Dark Mode:** Toggle between light and dark mode.

## Plugin Files
- **version.xml:** Defines the plugin version and other technical details.
- **settings.xml:** Plugin configuration, including whether it is enabled or not.
- **index.php:** Bootstrap file that loads the plugin class.
- **templates/:**
  - **display.tpl:** Main template to display the audio player, including CSS styles and JavaScript functionalities.
  - **submissionGalley.tpl:** Template to capture article presentation information.
  - **issueGalley.tpl:** Template to capture issue information.
- **locale/:**
  - **en_US/locale.po:** English translations for the plugin text strings.
  - **es_ES/locale.po:** Spanish translations for the plugin text strings.

## Development Team
The plugin was developed by the Community Development Team of Base4. For more information, visit base4.mx. The source code is available on GitHub at https://github.com/base4-mx/audio-player-plugin.

## Support
For support, issues, or questions, please contact hola@base4.mx
 
(#).

---

# Plugin AudioPlayer para OJS

## Descripción
El Plugin AudioPlayer agrega un reproductor de audio para archivos MP3 (.mpeg) a tu instalación de Open Journal Systems (OJS). Este plugin permite reproducir archivos de audio directamente desde el navegador, mejorando la accesibilidad y la experiencia del usuario.

## Características
- Reproductor de audio integrado para archivos MP3.
- Control de velocidad de reproducción (0.5x, 1x, 1.5x, 2x).
- Soporte para modo oscuro.
- Traducciones en inglés y español.

## Instalación
1. Descarga el archivo `audioplayer.tar.gz`.
2. Ingresa a tu OJS y ve al Panel de Control.
3. En el menú de la izquierda, busca el apartado "Sitio Web" y haz clic en él.
4. En el apartado "Plugins" (Módulos), busca la opción "Cargar un nuevo módulo" y haz clic en ella.
5. Se mostrará un apartado para subir tu archivo. Haz clic en "Subir fichero" y selecciona el archivo `audioplayer.tar.gz` que descargaste previamente.
6. Una vez que se complete la subida, guarda y espera a que el proceso termine.
7. Después de que la instalación esté completa, busca este plugin en el mismo apartado. Una vez que lo encuentres, marca la casilla para habilitarlo, y estará listo para su uso.


## Uso
Una vez instalado y habilitado, el plugin se integrará en las páginas de presentación de artículos y números de la revista. Verás un reproductor de audio en las páginas de galerada con controles para reproducir, avanzar, retroceder y cambiar la velocidad.

Para subir un archivo de audio, sigue estos pasos:
1. **Subir el archivo de audio:** Debes hacerlo de la misma manera en la que subes una galerada con un archivo PDF u otro archivo. Esto se realiza en el panel de administración de OJS.
2. **Publicar el archivo:** Una vez publicado, el archivo de audio se mostrará en la interfaz de OJS como cualquier otro archivo.
3. **Acceder al reproductor:** Al hacer clic en el archivo de audio, aparecerá el reproductor de audio en la página, permitiéndote reproducir, avanzar, retroceder y ajustar la velocidad del audio.

## Controles del Reproductor
- **Reproducir/Pausar:** Controla la reproducción del audio.
- **Control de Velocidad:** Cambia la velocidad de reproducción entre 0.5x, 1x, 1.5x y 2x.
- **Modo Oscuro:** Alterna entre el modo claro y el modo oscuro.

## Archivos del Plugin
- **version.xml:** Define la versión del plugin y otros detalles técnicos.
- **settings.xml:** Configuración del plugin, como si está habilitado o no.
- **index.php:** Archivo de arranque que carga la clase del plugin.
- **templates/:**
  - **display.tpl:** Plantilla principal para mostrar el reproductor de audio, incluyendo estilos CSS y funcionalidades en JavaScript.
  - **submissionGalley.tpl:** Plantilla para capturar información de la presentación del artículo.
  - **issueGalley.tpl:** Plantilla para capturar información del número de la revista.
- **locale/:**
  - **en_US/locale.po:** Traducciones en inglés para las cadenas de texto del plugin.
  - **es_ES/locale.po:** Traducciones en español para las cadenas de texto del plugin.

## Equipo de Desarrollo
El plugin fue desarrollado por el Equipo de Desarrollo Comunitario de Base4. Para más información, visita base4.mx. El código fuente está disponible en GitHub en https://github.com/base4-mx/audio-player-plugin.

## Soporte
Para soporte, problemas o preguntas, por favor contacta a hola@base4.mx
 
(#).
