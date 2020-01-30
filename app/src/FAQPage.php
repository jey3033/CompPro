<?php

use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;

class FAQPage extends Page
{
	private static $has_many = [
		'FAQ' => FAQ::class
	];

	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->removeByName('Metadata');
		$fields->addFieldToTab('Root.FAQ', GridField::create(
			'FAQ',
			'FAQ on this page',
			$this->FAQ(),
			GridFieldConfig_RecordEditor::create()
		));

		return $fields;
	}
}