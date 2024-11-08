<?php

namespace BiffBangPow\Extension;

use SilverStripe\ORM\DataExtension;
use SilverStripe\View\Requirements;
use SilverStripe\View\ThemeResourceLoader;

/**
 * Class \BiffBangPow\Extension\MemberDirectoryControllerExtension
 *
 * @property \BiffBangPow\Extension\MemberDirectoryControllerExtension $owner
 */
class MemberDirectoryControllerExtension extends DataExtension
{
    public function onAfterInit()
    {
        Requirements::css(
            ThemeResourceLoader::inst()->findThemedCSS('client/dist/css/membership_directory_main')
        );
    }
}
