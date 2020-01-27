<?php

use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\GridField\GridField;
use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
use SilverStripe\Versioned\Versioned;

class ServicePage extends Page
{
	private static $db = [
		'ServiceHeader' => 'Varchar',
		'HeaderDesc' => 'Text'
	];

	private static $has_many = [
		'Service' => Service::class
	];

	private static $extensions = [
		Versioned::class,
	];
	private static $versioned_gridfield_extensions = true;

	private static $owns = [
		'Service'
	];

	public function getCMSFields(){
		$fields = parent::getCMSFields();
		$fields->removeByName('Metadata');
		$fields->addFieldToTab('Root.Main', TextField::create('ServiceHeader', 'Service Header'));
		$fields->addFieldToTab('Root.Main', TextareaField::create('HeaderDesc', 'Description'));
		$fields->addFieldToTab('Root.Services', GridField::create(
			'Service',
			'Services on this page',
			$this->Service(),
			GridFieldConfig_RecordEditor::create()
		));

		return $fields;
	}
}