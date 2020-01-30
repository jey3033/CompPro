<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;

class FAQ extends DataObject
{
	private static $db = [
		'Question' => 'Text',
		'Answer' => 'Text'
	];

	private static $has_one = [
		'FAQPage' => FAQPage::class
	];

	private static $summary_fields = [
		'Question' => 'Question',
		'Answer' => 'Answer',
	];

	public function getCMSFields(){
		$fields = FieldList::create(
			TextField::create('Question'),
			TextareaField::create('Answer')
		);

		return $fields;
	}
}