<?php

use SilverStripe\SiteConfig\SiteConfig;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class AddOn 
{
	public static function sendEmailSMTP($from, $from_name, $subject, $arr_data = array(), $arr_template = array(), $cc = "", $bcc = "", $reply_to = "", $attachment = array(), $attachmenturl = array())
	{
		$siteconf = SiteConfig::current_site_config();
		$content = $arr_template;

		$mail = new PHPMailer(true);
		try {
			//setting server
			$mail->SMTPOptions = array(
			    'ssl' => array(
			        'verify_peer' => false,
			        'verify_peer_name' => false,
			        'allow_self_signed' => true
			    )
			);
			$mail->SMTPDebug = 5;
			$mail->isSMTP();
			$mail->Host = $siteconf->SMTPHost;
			$mail->SMTPAuth = true;
			$mail->Username = $siteconf->SMTPUsername;
			$mail->Password = $siteconf->SMTPPassword;
			$mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
			$mail->Port = 587;
			print_r($mail);
			//recipients
			$mail->setFrom($from, $from_name);
			$mail->addAddress($siteconf->email_to, $siteconf->email_to_name);
			//content
			$mail->isHTML(true);
			$mail->Subject = $subject;
			$mail->Body = $content;
			$mail->send();
			$data = 'Message Sent';
		} catch (Exception $e){
			$data = "Message could not be sent, Mailer Error: {$mail->ErrorInfo}";
		}
		return $data;
	}
}