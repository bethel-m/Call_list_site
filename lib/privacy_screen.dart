import 'package:call_list_site/components.dart';
import 'package:call_list_site/main.dart';
import 'package:flutter/material.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});
  static const path = "/privacy";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBAr(context),
      body: const SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 600,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(textAlign: TextAlign.justify, """
              
              
              Privacy Policy
              This privacy policy is applicable to the Call List app (hereinafter referred to as "Application") for mobile devices, which was developed by Bethel Mmadu (hereinafter referred to as "Service Provider") as a a Free service. This service is provided "AS IS".
              
              
              What information does the Application obtain and how is it used?
              User Provided Information
              The Application acquires the information you supply when you download and register the Application. Registration with the Service Provider is not mandatory. However, bear in mind that you might not be able to utilize some of the features offered by the Application unless you register with them.
              
              The Service Provider may also use the information you provided them to contact you from time to time to provide you with important information, required notices and marketing promotions.
              
              
              Automatically Collected Information
              In addition, the Application may collect certain information automatically, including, but not limited to, the type of mobile device you use, your mobile devices unique device ID, the IP address of your mobile device, your mobile operating system, the type of mobile Internet browsers you use, and information about the way you use the Application.
              
              
              Does the Application collect precise real time location information of the device?
              This Application does not gather precise information about the location of your mobile device.
              
              
              Do third parties see and/or have access to information obtained by the Application?
              Only aggregated, anonymized data is periodically transmitted to external services to aid the Service Provider in improving the Application and their service. The Service Provider may share your information with third parties in the ways that are described in this privacy statement.
              
              
              Please note that the Application utilizes third-party services that have their own Privacy Policy about handling data. Below are the links to the Privacy Policy of the third-party service providers used by the Application:
              
              Google Play Services
              The Service Provider may disclose User Provided and Automatically Collected Information:
              
              as required by law, such as to comply with a subpoena, or similar legal process;
              when they believe in good faith that disclosure is necessary to protect their rights, protect your safety or the safety of others, investigate fraud, or respond to a government request;
              with their trusted services providers who work on their behalf, do not have an independent use of the information we disclose to them, and have agreed to adhere to the rules set forth in this privacy statement.
              
              What are my opt-out rights?
              You can halt all collection of information by the Application easily by uninstalling the Application. You may use the standard uninstall processes as may be available as part of your mobile device or via the mobile application marketplace or network.
              
              
              Data Retention Policy, Managing Your Information
              The Service Provider will retain User Provided data for as long as you use the Application and for a reasonable time thereafter. The Service Provider will retain Automatically Collected information for up to 24 months and thereafter may store it in aggregate. If you'd like the Service Provider to delete User Provided Data that you have provided via the Application, please contact them at bethelcletus87@gmail.com and we will respond in a reasonable time. Please note that some or all of the User Provided Data may be required in order for the Application to function properly.
              
              
              Children
              The Service Provider does not use the Application to knowingly solicit data from or market to children under the age of 18.
              
              
              The Application does not address anyone under the age of 18. The Service Provider does not knowingly collect personally identifiable information from children under 18 years of age. In the case the Service Provider discover that a child under 18 has provided personal information, the Service Provider will immediately delete this from their servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact the Service Provider (bethelcletus87@gmail.com) so that they will be able to take the necessary actions.
              
              
              Security
              The Service Provider are concerned about safeguarding the confidentiality of your information. The Service Provider provide physical, electronic, and procedural safeguards to protect information we process and maintain. For example, we limit access to this information to authorized employees and contractors who need to know that information in order to operate, develop or improve their Application. Please be aware that, although we endeavor provide reasonable security for information we process and maintain, no security system can prevent all potential security breaches.
              
              
              Changes
              This Privacy Policy may be updated from time to time for any reason. The Service Provider will notify you of any changes to the Privacy Policy by updating this page with the new Privacy Policy. You are advised to consult this Privacy Policy regularly for any changes, as continued use is deemed approval of all changes.
              
              
              This privacy policy is effective as of 2025-01-01
              
              
              Your Consent
              By using the Application, you are giving your consent to the Service Provider processing of your information as set forth in this Privacy Policy now and as amended by us. "Processing,” means using cookies on a computer/hand held device or using or touching information in any way, including, but not limited to, collecting, storing, deleting, using, combining and disclosing information.
              
              
              Contact us
              If you have any questions regarding privacy while using the Application, or have questions about the practices, please contact the Service Provider via email at bethelcletus87@gmail.com.
              
              """),
                  BottomPageActions()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
