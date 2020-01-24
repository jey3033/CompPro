<?php

use SilverStripe\Forms\Form;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\OptionsetField;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

class ContactPage extends Page
{
	private static $db = [
		'Address' => 'Text',
		'Landline' => 'Varchar(14)',
		'Phone' => 'Text',
		'WA' => 'Boolean',
		'Insta' => 'Text',
		'LinkedIn' => 'Text',
		'Facebook' => 'Text',
		'EmbedMap' => 'HTMLText',
		'Email' => 'Text'
	];

	public function getCMSFields(){
		$source = [
			'1' => 'True',
			'2' => 'False'
		];

		$fields = parent::getCMSFields();
		$fields->removeByName('Metadata');
		$fields->removeByName('Content');
		$fields->addFieldsToTab('Root.Data', [
			TextareaField::create('Address', "Company's Address"),
			TextField::create('Landline', "Company's Landline Number"),
			TextField::create('Phone', "Company's Phone Number"),
			OptionsetField::create('WA', "Whatsapp Number", $source),
			TextField::create('Insta', "Company's Instagram Link"),
			TextField::create('LinkedIn', "Company's LinkedIn Profile"),
			TextField::create('Facebook', "Company's Facebook Profile"),
			EmailField::create('Email'),
			TextareaField::create('EmbedMap', "Company's Location")
		]);

		return $fields;
	}
}