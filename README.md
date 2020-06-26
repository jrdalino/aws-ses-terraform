# aws-ses-terraform


## Two Purposes
	1 Not block traffic, deliver traffic 
	2 Protect their users

## Best Practices
- Email Delivery: Close Relationship between ISP and ESP but there are no obligations
- Different IP Range and Domain for Marketing vs Transactional

### Different Domain and Subdomain for Marketing vs Transactional
- don't use example.com
- FROM update.traveloka.com and receipt.traveloka.com
- SPF Domain
- FROM: engage.traveloka.com
- REPLY TO: messages.traveloka.com

### If you have many Gmail destinations, Google Postmaster Tools
- https://www.gmail.com/postmaster/
- https://help.yahoo.com/kb/postmaster
- https://sendersupport.olc.protection.outlook.com/pm/

## Terms
- DKAM
- DKIM
- SPF

## Group
- https://www.m3aawg.org/

## Partners
- https://dmarcian.com/
- https://250ok.com/ (Analytics and Sceurity Company)
- https://www.edatasource.com/

## References
- https://d1.awsstatic.com/whitepapers/aws-amazon-ses-best-practices.pdf
- https://support.google.com/mail/answer/81126?hl=en
- https://support.google.com/a/answer/2466580?hl=en
- https://support.google.com/a/answer/33786
- https://support.google.com/a/answer/174124
- https://www.m3aawg.org/sites/default/files/m3aawg-sendingdomains10102019nk-2.pdf
