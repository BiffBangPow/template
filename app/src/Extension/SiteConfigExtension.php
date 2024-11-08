<?php

namespace BiffBangPow\Extension;

use BiffBangPow\Theme\BaseTheme\Helper\PageHelper;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Assets\Image;
use SilverStripe\Core\Extensible;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\HeaderField;
use SilverStripe\Forms\LiteralField;
use SilverStripe\Forms\NumericField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataExtension;
use SilverStripe\View\HTML;

/**
 * Class \BiffBangPow\Extension\SiteConfigExtension
 *
 * @property \SilverStripe\SiteConfig\SiteConfig|\BiffBangPow\Extension\SiteConfigExtension $owner
 * @property string $SocialLinkedIn
 * @property string $SocialFacebook
 * @property string $SocialYoutube
 * @property string $SocialX
 * @property string $SocialInstagram
 * @property string $OrgName
 * @property string $OrgEmail
 * @property string $OrgPhone
 * @property string $OrgAddress
 * @property string $RegisteredAddress
 */
class SiteConfigExtension extends DataExtension
{
    use Extensible;

    private static $db = [
        'SocialLinkedIn' => 'Varchar',
        'SocialFacebook' => 'Varchar',
        'SocialYoutube' => 'Varchar',
        'SocialX' => 'Varchar',
        'SocialInstagram' => 'Varchar',
        'OrgName' => 'Varchar',
        'OrgEmail' => 'Varchar',
        'OrgPhone' => 'Varchar',
        'OrgAddress' => 'Text',
        'RegisteredAddress' => 'Text'
    ];

    public function updateCMSFields(FieldList $fields)
    {
        parent::updateCMSFields($fields);
        $fields->addFieldsToTab('Root.Social', [
            TextField::create('SocialLinkedIn', 'LinkedIn'),
            TextField::create('SocialFacebook', 'Facebook'),
            TextField::create('SocialYoutube', 'YouTube'),
            TextField::create('SocialX', 'X'),
            TextField::create('SocialInstagram', 'Instagram')
        ]);
        $fields->addFieldsToTab('Root.Contact', [
            HeaderField::create('Contact info'),
            TextField::create('OrgName', 'Organisation name'),
            EmailField::create('OrgEmail', 'Email'),
            TextField::create('OrgPhone', 'Phone'),
            TextareaField::create('OrgAddress', 'Address')
                ->setDescription('Used in the website footer'),
            TextareaField::create('RegisteredAddress', 'Registered Address')
                ->setDescription('Used in the website footer')
        ]);
    }
}
