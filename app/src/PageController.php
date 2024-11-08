<?php

namespace {

    use SilverStripe\CMS\Controllers\ContentController;
    use SilverStripe\View\Requirements;
    use SilverStripe\View\ThemeResourceLoader;

    /**
 * Class \PageController
 *
 * @property \Page $dataRecord
 * @method \Page data()
 * @mixin \Page
 */
    class PageController extends ContentController
    {
        private static $allowed_actions = [];

        protected function init()
        {
            parent::init();
            Requirements::css(
                ThemeResourceLoader::inst()->findThemedCSS('client/dist/css/app_core'),
                '',
                [
                    'inline' => true
                ]
            );
            Requirements::css(
                ThemeResourceLoader::inst()->findThemedCSS('client/dist/css/app_common')
            );

            Requirements::javascript(
                ThemeResourceLoader::inst()->findThemedJavascript('client/dist/javascript/app_common.js'),
                [
                    'type' => false
                ]
            );
        }
    }
}
