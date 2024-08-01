<?php

// Import the GenericPlugin class from the lib.pkp.classes.plugins directory
import('lib.pkp.classes.plugins.GenericPlugin');

// Define the AudioPlayerPlugin class that extends GenericPlugin
class AudioPlayerPlugin extends GenericPlugin {
    
    /**
     * Register the plugin in the system.
     * @param $category Plugin category.
     * @param $path Plugin path.
     * @param $mainContextId Main context ID (optional).
     * @return boolean Indicates whether the registration was successful.
     */
    function register($category, $path, $mainContextId = null) {
        // Call the register method of the parent class and check if the plugin was enabled correctly
        if (parent::register($category, $path, $mainContextId)) {
            // If the plugin is enabled in the current context
            if ($this->getEnabled($mainContextId)) {
                // Register hooks for OPS (Open Preprint Systems)
                HookRegistry::register('PreprintHandler::view::galley', array($this, 'submissionCallback'), HOOK_SEQUENCE_LAST);
                // Register hooks for OJS (Open Journal Systems)
                HookRegistry::register('ArticleHandler::view::galley', array($this, 'submissionCallback'), HOOK_SEQUENCE_LAST);
                HookRegistry::register('IssueHandler::view::galley', array($this, 'issueCallback'), HOOK_SEQUENCE_LAST);
                // Require localization components for the application
                AppLocale::requireComponents(LOCALE_COMPONENT_APP_COMMON);
            }
            return true;
        }
        return false;
    }

    /**
     * Install default settings during context creation.
     * @return string Path to the plugin-specific settings file.
     */
    function getContextSpecificPluginSettingsFile() {
        // Return the path to the settings.xml file inside the plugin directory
        return $this->getPluginPath() . '/settings.xml';
    }

    /**
     * Get the name of the plugin.
     * @return string Plugin name.
     */
    function getDisplayName() {
        // Return the name of the plugin, localized according to the user's language
        return __('plugins.generic.audioPlayer.name');
    }

    /**
     * Get the description of the plugin.
     * @return string Plugin description.
     */
    function getDescription() {
        // Return the description of the plugin, localized according to the user's language
        return __('plugins.generic.audioPlayer.description');
    }

    /**
     * Callback that renders the galley of the submission.
     * @param $hookName Hook name.
     * @param $args Arguments passed to the hook.
     * @return boolean Indicates whether the callback executed successfully.
     */
    function submissionCallback($hookName, $args) {
        // Get the request from the first argument
        $request =& $args[0];
        // Get the current application
        $application = Application::get();
        
        // Differentiate between OJS and OPS
        switch ($application->getName()) {
            case 'ojs2':
                // If OJS, get the issue, galley, and submission from the rest of the arguments
                $issue =& $args[1];
                $galley =& $args[2];
                $submission =& $args[3];
                $submissionNoun = 'article';
                break;
            case 'ops':
                // If OPS, get the galley and submission from the arguments
                $galley =& $args[1];
                $submission =& $args[2];
                $submissionNoun = 'preprint';
                $issue = null; // No issue in OPS
                break;
            default:
                // Throw an exception if the application is not recognized
                throw new Exception('Unknown application!');
        }

        // Check if the galley is present
        if (!$galley) {
            return false;
        }

        // Get the submission file and its MIME type
        $submissionFile = $galley->getFile();
        $mimeType = $submissionFile->getData('mimetype');

        // If the file is of type audio/mpeg, process to show the player
        if ($mimeType === 'audio/mpeg') {
            $galleyPublication = null;
            // Find the publication corresponding to the galley
            foreach ($submission->getData('publications') as $publication) {
                if ($publication->getId() === $galley->getData('publicationId')) {
                    $galleyPublication = $publication;
                    break;
                }
            }

            // Get additional metadata such as authors and issue identification
            $authors = $submission->getAuthors();
            $issueIdentification = $issue ? $issue->getIssueIdentification() : '';

            // Configure and assign variables to the template
            $templateMgr = TemplateManager::getManager($request);
            $templateMgr->assign(array(
                'displayTemplateResource' => $this->getTemplateResource('display.tpl'),
                'pluginUrl' => $request->getBaseUrl() . '/' . $this->getPluginPath(),
                'galleyFile' => $submissionFile,
                'issue' => $issue,
                'submission' => $submission,
                'submissionNoun' => $submissionNoun,
                'bestId' => $submission->getBestId(),
                'galley' => $galley,
                'currentVersionString' => $application->getCurrentVersion()->getVersionString(false),
                'isLatestPublication' => $submission->getData('currentPublicationId') === $galley->getData('publicationId'),
                'galleyPublication' => $galleyPublication,
                'issueIdentification' => $issueIdentification,
                'authors' => $authors,
                'keywords' => implode(', ', $galleyPublication->getLocalizedData('keywords')),
                'abstract' => $galleyPublication->getLocalizedData('abstract'),
            ));
            // Display the template with the assigned data
            $templateMgr->display($this->getTemplateResource('submissionGalley.tpl'));
            return true;
        }

        return false;
    }

    /**
     * Callback that renders the galley of the issue.
     * @param $hookName Hook name.
     * @param $args Arguments passed to the hook.
     * @return boolean Indicates whether the callback executed successfully.
     */
    function issueCallback($hookName, $args) {
        // Get the request from the first argument
        $request =& $args[0];
        // Get the issue from the second argument
        $issue =& $args[1];
        // Get the galley from the third argument
        $galley =& $args[2];

        // Configure and assign variables to the template if the file is of type audio/mpeg
        $templateMgr = TemplateManager::getManager($request);
        if ($galley && $galley->getFileType() == 'audio/mpeg') {
            $application = Application::get();
            $templateMgr->assign(array(
                'displayTemplateResource' => $this->getTemplateResource('display.tpl'),
                'pluginUrl' => $request->getBaseUrl() . '/' . $this->getPluginPath(),
                'galleyFile' => $galley->getFile(),
                'issue' => $issue,
                'galley' => $galley,
                'currentVersionString' => $application->getCurrentVersion()->getVersionString(false),
                'isLatestPublication' => true,
            ));
            // Display the template with the assigned data
            $templateMgr->display($this->getTemplateResource('issueGalley.tpl'));
            return true;
        }

        return false;
    }
}
?>
