<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\Image;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Versioned\Versioned;

class GalleryImage extends DataObject
{
	private static $db = [
		'Title' => 'Varchar',
		'Desc' => 'Text'
	];
	private static $has_one = [
		'Photo' => Image::class,
		'GalleryPage' => GalleryPage::class
	];

	private static $owns = [
		'Photo',
	];

	private static $summary_fields = [
		'CMSThumb',
	];	

	private static $extensions = [
		Versioned::class,
	];
	private static $versioned_gridfield_extensions = true;

	public function CMSThumb(){
		if($this->Photo()->exists()){
			return $this->Photo()->ScaleWidth(100);
		}
		return "(no image)";
	}

	public function getCMSFields(){
		$fields = FieldList::create(
			UploadField::create('Photo'),
			TextField::create('Title'),
			TextareaField::create('Desc')
		);

		return $fields;
	}
}