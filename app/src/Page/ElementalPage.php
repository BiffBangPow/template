<?php

namespace BiffBangPow\Page;

use DNADesign\Elemental\Extensions\ElementalPageExtension;

/**
 * Class \BiffBangPow\Page\ElementalPage
 *
 * @property int $ElementalAreaID
 * @method \DNADesign\Elemental\Models\ElementalArea ElementalArea()
 * @mixin \DNADesign\Elemental\Extensions\ElementalPageExtension
 */
class ElementalPage extends \Page
{
    /**
     * @var string
     */
    private static $table_name = 'ContentPage';
    private static $singular_name = 'Content Page';
    private static $plural_name = 'Content Pages';
    private static $description = 'Page made up from content blocks';
    private static $hide_ancestor = \Page::class;

    /**
     * @var array
     */
    private static $extensions = [
        ElementalPageExtension::class
    ];

}