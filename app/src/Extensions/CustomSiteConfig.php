<?php

use SilverStripe\ORM\DataExtension;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;

class CustomSiteConfig extends DataExtension
{
	private static $db = [
		'SMTPHost' => 'Text',
		'SMTPUsername' => 'Text',
		'SMTPPassword' => 'Text',
	];

	public function updateCMSFields(FieldList $fields)
	{
		//SMTP Setting
		$fields->addFieldToTab(
			'Root.Email',
			new TextField('SMTPHost', "SMTP Host")
		);
		$fields->addFieldToTab(
			'Root.Email',
			new TextField('SMTPUsername', "SMTP Username")
		);
		$fields->addFieldToTab(
			'Root.Email',
			new TextField('SMTPPassword', "SMTP Password")
		);

	}
}