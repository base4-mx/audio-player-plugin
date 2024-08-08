<!DOCTYPE html>
<html lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}">
<head>
    <!-- Metadata and initial configuration -->
    <meta http-equiv="Content-Type" content="text/html; charset={$defaultCharset|escape}" />
    <!-- Configure the viewport for mobile devices -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Define the page title, dynamically translated -->
    <title>{translate key="article.pageTitle" title=$title|escape}</title>

    <!-- Load context-specific headers -->
    {load_header context="frontend" headers=$headers}
    <!-- Load context-specific stylesheets -->
    {load_stylesheet context="frontend" stylesheets=$stylesheets}
    <!-- Load context-specific scripts -->
    {load_script context="frontend" scripts=$scripts}

    <!-- Load Google Fonts for icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Inline CSS styles for the page -->
    <style>
        /* Style for the body of the page */
        html,body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            overflow: hidden; /* Disable scrolling on the body */
            background-color: #ffffff; /* White background */
            transition: background-color 0.3s, color 0.3s;
        }

        /* Style for the content view */
        .galley_view {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 12px;
            margin: 20px auto;
            padding: 20px;
            max-width: 1200px; /* Increased maximum width for the container */
            width: 50%; /* Ensure container takes full width up to max-width */
            max-height: 80vh; /* Maximum height for the container */
            overflow-y: auto; /* Adds scroll bars if content is too large */
            overflow-x: hidden; /* Hide horizontal scroll bar */
            position: relative; /* Ensures absolutely positioned elements are relative to this container */
            transition: background-color 0.5s ease, color 0.3s ease, transform 0.5s ease;
        }

        /* Style for the content notice */
        .galley_view_notice {
            margin-top: 10px;
            padding: 10px;
            background-color: #ffeeba;
            border: 1px solid #ffc107;
            border-radius: 4px;
        }

        /* Container for the audio player and controls */
        .audio-container {
            display: flex;
            align-items: center;
            margin-top: 20px;
        }

        /* Style for the audio element */
        audio {
            flex-grow: 1;
        }

        /* Container for the speed control */
        .speed-control {
            margin-left: 10px;
        }

        .speed-control select {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            background-color: #fff;
            cursor: pointer;
        }

        /* Style for the metadata section */
        .metadata {
            margin-top: 20px;
        }

        /* Style for paragraphs within the metadata */
        .metadata p {
            margin-bottom: 8px;
        }

        /* Style for bold texts within the metadata */
        .metadata strong {
            margin-right: 5px;
        }

        /* Style for the footer */
        .footer {
            text-align: center;
            margin-top: 20px;
            color: #777;
        }

        /* Dark mode styles only for the article container */
        .galley_view.dark-mode {
            background-color: #1e1e1e;
            border-color: #333;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
        }

        .galley_view.dark-mode .galley_view_notice {
            background-color: #444;
            border-color: #666;
        }

        .galley_view.dark-mode h2,
        .galley_view.dark-mode h3,
        .galley_view.dark-mode .dark-mode-toggle span,
        .galley_view.dark-mode audio,
        .galley_view.dark-mode .metadata,
        .galley_view.dark-mode .metadata p,
        .galley_view.dark-mode .metadata strong {
            color: #ffffff;
        }

        .galley_view.dark-mode .dark-mode-toggle button {
            background-color: #444;
        }

        .galley_view.dark-mode .dark-mode-toggle button:hover {
            background-color: #666;
        }

        /* Styles for the dark mode toggle button */
        .dark-mode-toggle {
            position: absolute;
            top: 10px; /* Adjust vertical position as needed */
            right: 10px; /* Adjust horizontal position as needed */
            z-index: 10; /* Ensure it is above content */
            display: flex;
            align-items: center;
        }

        .dark-mode-toggle button {
            background-color: #000000;
            border: none;
            color: white;
            padding: 15px; /* Adjust padding for larger size */
            cursor: pointer;
            border-radius: 50%; /* Make border round */
            display: flex;
            align-items: center;
            justify-content: center;
            width: 50px; /* Adjust width and height for round shape */
            height: 50px;
        }

        .dark-mode-toggle button:hover {
            background-color: #333333;
        }

        .dark-mode-toggle .material-icons {
            font-size: 24px;
            transition: transform 0.3s ease;
        }

        .dark-mode-toggle .material-icons.rotate {
            transform: rotate(180deg); 
        }

        .keyword {
            display: inline-block;
            border: 1px solid currentColor;
            border-radius: 16px;
            padding: 2px 8px;
            margin: 2px;
        }

        .galley_view.dark-mode .audio-controls .material-icons {
            color: inherit !important; /* Inherit color in dark mode */
            text-shadow: none; /* No shadow in dark mode */
        }

        /* Style for the audio element */
        .audio-container audio {
            width: 100%; /* Adjust width to container */
            border-radius: 8px; /* Rounded borders */
            border: 1px solid #ddd; /* Thin border */
            background-color: #f3f3f3; /* Light grey background */
            outline: none; /* Remove focus border */
            margin-right: 10px; /* Right margin for spacing */
        }

        .audio-container {
            background-color: #f9f9f9; /* Light grey background */
            border-radius: 12px; /* Rounded borders */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Soft shadow */
            padding: 10px; /* Internal spacing */
        }

        /* Style for the article title */
        .article-title {
            font-size: 24px;
            font-weight: bold;
            color: #333; /* Text color */
            margin-bottom: 10px; /* Bottom spacing */
        }

        /* Style for the article subtitle */
        .article-subtitle {
            font-size: 20px;
            font-weight: normal;
            color: #555; /* Text color */
            margin-bottom: 15px; /* Bottom spacing */
        }
    </style>
</head>
<body class="pkp_page_{$requestedPage|escape} pkp_op_{$requestedOp|escape}">

    <!-- Page header -->
    <header class="header_view">
        <!-- Link to return to the previous page -->
        <a href="{$parentUrl}" class="return">
            <span class="pkp_screen_reader">
                {if $parent instanceOf Issue}
                    <!-- Alternative text to return to the journal issue -->
                    {translate key="issue.return"}
                {else}
                    <!-- Alternative text to return to the article -->
                    {translate key="article.return"}
                {/if}
            </span>
        </a>

        <!-- Article title with link -->
        <a href="{$parentUrl}" class="title">
            {$title|escape}
        </a>

        <!-- Link to download the audio file -->
        <a href="{$audioViewerUrl}" class="download" download>
            <span class="label">
                {translate key="common.download"}
            </span>
            <span class="pkp_screen_reader">
                {translate key="common.download"}
            </span>
        </a>
    </header>

    <!-- Main content: audio playback -->
    {if $galleyFile->getData('mimetype') == 'audio/mpeg'}
        <div id="audioPlayerContainer" class="galley_view{if !$isLatestPublication} galley_view_with_notice{/if}">
            <!-- Notice if not the latest publication -->
            {if !$isLatestPublication}
                <div class="galley_view_notice">
                    <div class="galley_view_notice_message" role="alert">
                        <!-- Publication date -->
                        {$datePublished|escape}
                    </div>
                </div>
            {/if}

            <!-- Journal issue identification and article title -->
            <h2 class="article-title">
                {$issueIdentification|escape}
            </h2>
            <h3 class="article-subtitle">
                {$title|escape}
            </h3>

            <!-- DOI link -->
            {if $doi}
                <p><a href="https://doi.org/{$doi|escape}" target="_blank">https://doi.org/{$doi|escape}</a></p>
            {/if}

            <!-- Audio player and controls -->
            <div class="audio-container">
                <audio id="audioPlayer" controls>
                    <source src="{$audioViewerUrl|escape}" type="audio/mpeg">
                    Your browser does not support the audio element.
                </audio>

                <!-- Custom audio controls -->
                <div class="speed-control">
                    <select id="speedControl">
                        <option value="0.5">0.5x</option>
                        <option value="1" selected>1x</option>
                        <option value="1.5">1.5x</option>
                        <option value="2">2x</option>
                    </select>
                </div>
            </div>
            <hr>

            <!-- Article metadata -->
            <div class="metadata">
                <!-- Author information -->
                {foreach from=$authors item=author}
                    <p>{$author->getFullName()|escape}</p>
                    <p>{$author->getLocalizedAffiliation()|escape}</p>
                    {if $author->getORCID()}
                        <p><a href="https://orcid.org/{$author->getORCID()|escape}" target="_blank">{$author->getORCID()|escape}</a></p>
                    {/if}
                    <hr>
                {/foreach} 

                <!-- Keywords -->
                <p><strong>{translate key="article.keywords"}:</strong>
                    {foreach from=$keywords item=keyword}
                        <span class="keyword">{$keyword|escape}</span>
                    {/foreach}
                </p>

                <!-- Article abstract without HTML tags -->
                <p><strong>{translate key="article.abstract"}:</strong> {strip_tags($abstract)}</p>
            </div>

            <!-- Dark mode toggle button -->
            <div class="dark-mode-toggle">
                <button id="darkModeToggle">
                    <span class="material-icons" id="darkModeIcon">brightness_2</span>
                </button>
            </div>
        </div>
    {/if}
    
    <!-- Footer -->
    <div class="footer">
        {call_hook name="Templates::Common::Footer::PageFooter"}
    </div>

    <!-- JavaScript for dark mode toggle -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const toggleButton = document.getElementById('darkModeToggle');
            const galleyView = document.querySelector('.galley_view');
            const icon = document.getElementById('darkModeIcon');
            const audioPlayer = document.getElementById('audioPlayer');
            const speedControl = document.getElementById('speedControl');

            if (galleyView) {
                // Set initial dark mode to light mode
                galleyView.classList.remove('dark-mode');
                localStorage.setItem('darkMode', 'disabled');
                icon.textContent = 'brightness_2';

                // Set initial playback speed to 1x
                audioPlayer.playbackRate = 1;
                speedControl.value = "1";

                toggleButton.addEventListener('click', function() {
                    if (galleyView.classList.contains('dark-mode')) {
                        galleyView.classList.remove('dark-mode');
                        localStorage.setItem('darkMode', 'disabled');
                        icon.textContent = 'brightness_2';
                        icon.classList.remove('rotate'); // Remove rotation

                        // Set icon colors in light mode
                        document.querySelectorAll('.material-icons').forEach(function(icon) {
                            icon.style.color = 'white'; /* Light blue */
                        });
                    } else {
                        galleyView.classList.add('dark-mode');
                        localStorage.setItem('darkMode', 'enabled');
                        icon.textContent = 'wb_sunny';
                        icon.classList.add('rotate'); // Add rotation

                        // Set icon colors in dark mode
                        document.querySelectorAll('.material-icons').forEach(function(icon) {
                            icon.style.color = '#ffc107'; /* Yellow */
                            icon.style.textShadow = '1px 1px 1px #666'; /* dark gray light shade */
                        });
                    }
                });

                speedControl.addEventListener('change', function() {
                    audioPlayer.playbackRate = parseFloat(speedControl.value);
                });

                // Apply dark mode based on saved preference
                const savedDarkMode = localStorage.getItem('darkMode');
                if (savedDarkMode === 'enabled') {
                    galleyView.classList.add('dark-mode');
                    icon.textContent = 'wb_sunny';
                    icon.classList.add('rotate'); // Add rotation
                }
            }
        });
    </script>
</body>
</html>
