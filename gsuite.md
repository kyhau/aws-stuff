# G Suite

## Drive

1. Drive stores at most 4,000 items or 5GB of data offline.

1. You can restore a given user's deleted Google Drive files for a date range you specify, as long as the Drive files were deleted within the past 25 days.

1. If a user provides others with access to any Drive item, when you restore that item, the access is not restored. The user can re-enable access as needed.

1. By default, each user with a G Suite account has 30 GB of storage available for uploaded Google Drive files, Gmail, and Google+ photos. Users with the free edition of G Suite (or consumer accounts) get 15 GB of storage.

## Gmail

### Prevent Spammers from Forging Your Domain

Google supports several methods of preventing spammers from forging users in your domain.

1. [Sender Policy Framework (SPF) records](https://support.google.com/a/answer/33786)
1. [DomainKeys Identified Mail (DKIM)](https://support.google.com/a/answer/174124)
1. (NEWER method) [Domain-based Message Authentication, Reporting & Conformance (DMARC)](https://support.google.com/a/answer/2466580)

You must create DNS TXT records to configure these email security features and allow access to your DNS registrar, such as GoDaddy or eNom. Learn more about [Domain Name Service (DNS) basics](https://support.google.com/a/answer/48090).

Note: If you purchased your domain from Google, the SPF record is already created. Also your DNS registrar credentials are available in your G Suite Admin console.

### To create or view an SPF record for your company's domain:

You must have access to your DNS registrar to create or view the DNS TXT record for SPF.

Sign in to your DNS registrar as the administrator user.

If you purchased your domain from Google, locate the TXT record configured for SPF.

If you didn't purchase your domain from Google, create a TXT record using the following information (note that the values for the DNS TXT record vary between DNS registrars; look for your registrar from the [list of specific DNS providers](https://support.google.com/a/topic/1409901)). Example for GoDaddy and many registrars:

```
Hostname: @
Record value: v=spf1 include:_spf.google.com ~all
```

Learn more about [DNS TXT records](https://support.google.com/a/answer/2716800).

Note: It may take up to 48 hours for DNS changes to fully propagate.

If you have multiple domains in your company, you must complete these steps for every domain.

### To configure DKIM for your company's domain

1. Sign in to your domain's G Suite Admin console as the G Suite super administrator.

1. Click the **G Suite** icon.

1. Select **Gmail** > **Authenticate email**.

1. Select your domain from the drop-down list.
If you have multiple domains in your company, you can select another domain name.

1. Click the **Generate new record** link.

1. Use Prefix selector **google**.
Note: You only need to change the prefix if you're already using **google** as another prefix.

1. Click **Generate**.
The Admin console displays the hostname and TXT record value you must configure with your DNS registrar.

1. Sign in to your DNS registrar and create a TXT record using the DNS hostname and record value provided by Google.
Note: The values for the [DNS TXT record](https://support.google.com/a/answer/2716800) vary between DNS registrars, so look for your registrar from the [list of specific DNS providers](https://support.google.com/a/topic/1409901).

1. When you're done creating the DNS TXT records, go back to your G Suite Admin console and click **Start authentication**.
If you don't want to configure DKIM, close the Authenticate email window.

Note: It can take up to 48 hours for DNS changes to fully propagate.

## Mobile Device Management

### To reset the sign-in cookies for a user:

1. Sign in to your domain's G Suite Admin console as the administrator user using the firstname.lastname@yourdomain.com format.

1. Click the Users icon.

1. From the user list, click the username.
Once the page has loaded, click Account, which displays the user's profile.
In the Password section, click Reset sign-in cookies.

1. Click Reset sign-in cookies.

It can take up to 60 minutes to sign out the user from current Gmail HTTP sessions. The logout time for other applications can vary.