<?php

namespace {

    use SilverStripe\CMS\Model\SiteTree;

    /**
 * Class \Page
 *
 * @property bool $ShowInMainMenu
 * @property bool $ShowInFooterMenu
 * @mixin \BiffBangPow\Extension\PageExtension
 */
class Page extends SiteTree
    {
        private static $db = [];

        private static $has_one = [];
    }
}
