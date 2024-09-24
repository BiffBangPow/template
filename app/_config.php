<?php

use SilverStripe\Control\Director;
use SilverStripe\Core\Environment;
use SilverStripe\Forms\HTMLEditor\TinyMCEConfig;

Director::config()->set('alternate_base_url', Environment::getEnv('SS_BASE_URL'));

TinyMCEConfig::get('cms')
    ->addButtonsToLine(1, 'styleselect')
    ->setOption('importcss_append', true);
