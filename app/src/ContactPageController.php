<?php

use SilverStripe\Forms\Form;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\FormAction;


class ContactPageController extends PageController
{
	private static $allowed_actions = [
		'sendMessage'
	];

	public function sendMessage($data){
		$from_name = $data['name'];
		$from = $data['email'];
		$dataEmail = [
			'name' => $data['name'],
			'body' => $data['message']
		];
		$template = $this->customise($dataEmail)->renderWith('/layout/emailTemplate');
		$p = AddOn::sendEmailSMTP($from, $from_name, $data['subject'], $dataEmail, $template);
		return $this->redirectBack();
	}
}