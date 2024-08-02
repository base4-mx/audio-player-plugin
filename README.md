# AudioPlayer Plugin for OJS

## Important
The plugin works best with Firefox browser since Chrome sometimes does not allow seeking forward 10 seconds.

## Description
The AudioPlayer Plugin adds an audio player for MP3 (.mpeg) files to your Open Journal Systems (OJS) installation. This plugin allows audio files to be played directly from the browser, enhancing accessibility and user experience.

## Features
- Integrated audio player for MP3 files.
- Playback speed control (0.5x, 1x, 1.5x, 2x).
- Buttons to skip forward or backward 10 seconds.
- Support for dark mode.
- Translations in English and Spanish.

## Installation
1. Unzip the downloaded file.
2. Verify that the main folder is named `Audio` and contains an `.inc.php` file, two `.xml` files, and a `.php` file, along with two subfolders: `templates` and `locale`.
3. Move the `Audio` folder to the OJS plugins directory (`plugins/generic`). You can do this using the terminal or a file manager.
4. Access the OJS administration panel and navigate to the "Installed Plugins" section.
5. Verify that the plugin is listed. If so, activate it.
6. If the plugin does not appear in the list, review the previous steps to ensure the installation was completed correctly.


## Usage
Once installed and enabled, the plugin will integrate into the article and issue presentation pages. You will see an audio player on the galley pages with controls to play, skip forward, rewind, and adjust playback speed.

To upload an audio file, follow these steps:
1. **Upload the Audio File:** Do this in the same way you upload a galley with a PDF file or any other file. This is done in the OJS administration panel.
2. **Publish the File:** Once published, the audio file will appear in the OJS interface like any other file.
3. **Access the Player:** Clicking on the audio file will display the audio player on the page, allowing you to play, skip, rewind, and adjust the speed of the audio.

## Player Controls
- **Play/Pause:** Controls audio playback.
- **Skip Forward 10 Seconds:** Button to skip forward 10 seconds.
- **Rewind 10 Seconds:** Button to rewind 10 seconds.
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

## Importante
El plugin funciona mejor con el navegador Firefox ya que Chrome a veces no permite adelantar 10 segundos.

## Descripción
El Plugin AudioPlayer agrega un reproductor de audio para archivos MP3 (.mpeg) a tu instalación de Open Journal Systems (OJS). Este plugin permite reproducir archivos de audio directamente desde el navegador, mejorando la accesibilidad y la experiencia del usuario.

## Características
- Reproductor de audio integrado para archivos MP3.
- Control de velocidad de reproducción (0.5x, 1x, 1.5x, 2x).
- Botones para avanzar o retroceder 10 segundos.
- Soporte para modo oscuro.
- Traducciones en inglés y español.

## Instalación
1. Descomprime el archivo descargado.
2. Verifica que la carpeta principal se llame `Audio` y contenga un archivo `.inc.php`, dos archivos `.xml` y un archivo `.php`, junto con dos subcarpetas: `templates` y `locale`.
3. Mueve la carpeta `Audio` al directorio de plugins de OJS (`plugins/generic`). Puedes hacerlo usando la terminal o un administrador de archivos.
4. Accede al panel de administración de OJS y navega a la sección de "Plugins Instalados".
5. Verifica que el plugin esté listado. Si es así, actívalo.
6. Si el plugin no aparece en la lista, revisa los pasos anteriores para asegurar que la instalación se haya realizado correctamente.

## Uso
Una vez instalado y habilitado, el plugin se integrará en las páginas de presentación de artículos y números de la revista. Verás un reproductor de audio en las páginas de galerada con controles para reproducir, avanzar, retroceder y cambiar la velocidad.

Para subir un archivo de audio, sigue estos pasos:
1. **Subir el archivo de audio:** Debes hacerlo de la misma manera en la que subes una galerada con un archivo PDF u otro archivo. Esto se realiza en el panel de administración de OJS.
2. **Publicar el archivo:** Una vez publicado, el archivo de audio se mostrará en la interfaz de OJS como cualquier otro archivo.
3. **Acceder al reproductor:** Al hacer clic en el archivo de audio, aparecerá el reproductor de audio en la página, permitiéndote reproducir, avanzar, retroceder y ajustar la velocidad del audio.

## Controles del Reproductor
- **Reproducir/Pausar:** Controla la reproducción del audio.
- **Avanzar 10 segundos:** Botón para avanzar 10 segundos.
- **Retroceder 10 segundos:** Botón para retroceder 10 segundos.
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
