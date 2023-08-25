import 'package:antho_web/widgets/layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(const MyApp());

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'privacy',
          builder: (BuildContext context, GoRouterState state) {
            return const PrivacyScreen();
          },
        ),
      ],
    ),
  ],
);

/// The main app.
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}

/// The home screen
class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      child: Center(child: Text('Accueil')),
    );
  }
}

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyLayout(
      child: Padding(
        padding: const EdgeInsets.all(58.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Privacy Policy of Demo App Antho (used on help docs)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            SizedBox(
              height: 10,
            ),
            Text("This Application collects some Personal Data from its Users"),
            SizedBox(
              height: 10,
            ),
            Text(
                "This document can be printed for reference by using the print command in the settings of any browser."),
            Divider(),
            SizedBox(
              height: 30,
            ),
            Text("Owner and Data Controller", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text("Anthony Dalibert"),
            SizedBox(
              height: 10,
            ),
            Text("Owner contact email: antho.freelance@gmail.com"),
            Divider(),
            SizedBox(
              height: 30,
            ),
            Text("Types of Data collected", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Among the types of Personal Data that this Application collects, by itself or through third parties, there are: Contacts permission; Camera permission; Microphone permission; Social media accounts permission; Approximate location permission (continuous); Cookies; Usage Data; email address; password; unique device identifiers for advertising (Google Advertiser ID or IDFA, for example)."),
            SizedBox(
              height: 10,
            ),

            Text(
                "Complete details on each type of Personal Data collected are provided in the dedicated sections of this privacy policy or by specific explanation texts displayed prior to the Data collection."),
            Text(
                "Personal Data may be freely provided by the User, or, in case of Usage Data, collected automatically when using this Application."),
            Text(
                "Unless specified otherwise, all Data requested by this Application is mandatory and failure to provide this Data may make it impossible for this Application to provide its services. In cases where this Application specifically states that some Data is not mandatory, Users are free not to communicate this Data without consequences to the availability or the functioning of the Service."),

            Text(
                "Users who are uncertain about which Personal Data is mandatory are welcome to contact the Owner."),

            SizedBox(
              height: 10,
            ),
            Text(
                "Any use of Cookies – or of other tracking tools — by this Application or by the owners of third-party services used by this Application serves the purpose of providing the Service required by the User, in addition to any other purposes described in the present document."),
            SizedBox(
              height: 10,
            ),
            Text(
                "Users are responsible for any third-party Personal Data obtained, published or shared through this Application."),
            SizedBox(
              height: 10,
            ),

            Divider(),
            SizedBox(
              height: 30,
            ),
            Text("Mode and place of processing the Data", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(
              height: 10,
            ),
            Text("Methods of processing", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "The Owner takes appropriate security measures to prevent unauthorized access, disclosure, modification, or unauthorized destruction of the Data."),
            SizedBox(
              height: 10,
            ),
            Text(
                "The Data processing is carried out using computers and/or IT enabled tools, following organizational procedures and modes strictly related to the purposes indicated. In addition to the Owner, in some cases, the Data may be accessible to certain types of persons in charge, involved with the operation of this Application (administration, sales, marketing, legal, system administration) or external parties (such as third-party technical service providers, mail carriers, hosting providers, IT companies, communications agencies) appointed, if necessary, as Data Processors by the Owner. The updated list of these parties may be requested from the Owner at any time."),
            SizedBox(
              height: 10,
            ),
            Text("Place", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "The Data is processed at the Owner's operating offices and in any other places where the parties involved in the processing are located."),
            SizedBox(
              height: 10,
            ),
            Text(
                "Depending on the User's location, data transfers may involve transferring the User's Data to a country other than their own. To find out more about the place of processing of such transferred Data, Users can check the section containing details about the processing of Personal Data."),
            SizedBox(
              height: 10,
            ),
            Text("Retention time", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Unless specified otherwise in this document, Personal Data shall be processed and stored for as long as required by the purpose they have been collected for and may be retained for longer due to applicable legal obligation or based on the Users’ consent."),

            Divider(),
            SizedBox(
              height: 30,
            ),

            Text("The purposes of processing", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(
              height: 10,
            ),
            Text(
                "The Data concerning the User is collected to allow the Owner to provide its Service, comply with its legal obligations, respond to enforcement requests, protect its rights and interests (or those of its Users or third parties), detect any malicious or fraudulent activity, as well as the following: Device permissions for Personal Data access, Analytics, Registration and authentication, Access to third-party accounts, Registration and authentication provided directly by this Application and Advertising."),
            SizedBox(
              height: 10,
            ),
            Text(
                "For specific information about the Personal Data used for each purpose, the User may refer to the section “Detailed information on the processing of Personal Data”."),
            SizedBox(
              height: 10,
            ),

            Divider(),
            SizedBox(
              height: 30,
            ),

            Text("Facebook permissions asked by this Application", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(
              height: 10,
            ),
            Text(
                "This Application may ask for some Facebook permissions allowing it to perform actions with the User's Facebook account and to retrieve information, including Personal Data, from it. This service allows this Application to connect with the User's account on the Facebook social network, provided by Facebook Inc."),
            SizedBox(
              height: 10,
            ),
            Text(
                "For more information about the following permissions, refer to the Facebook permissions documentation and to the Facebook privacy policy."),
            SizedBox(
              height: 10,
            ),
            Text("The permissions asked are the following:"),
            SizedBox(
              height: 10,
            ),
            Text("Basic information", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "By default, this includes certain User’s Data such as id, name, picture, gender, and their locale. Certain connections of the User, such as the Friends, are also available. If the User has made more of their Data public, more information will be available."),
            SizedBox(
              height: 10,
            ),

            Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text("Provides access to the User's primary email address."),
            SizedBox(
              height: 10,
            ),
                Divider(),
                SizedBox(height: 30,),
            Text("Device permissions for Personal Data access", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Depending on the User's specific device, this Application may request certain permissions that allow it to access the User's device Data as described below."),
            SizedBox(
              height: 10,
            ),

            Text(
                "By default, these permissions must be granted by the User before the respective information can be accessed. Once the permission has been given, it can be revoked by the User at any time. In order to revoke these permissions, Users may refer to the device settings or contact the Owner for support at the contact details provided in the present document."),
            SizedBox(
              height: 10,
            ),
                Text(
                    "The exact procedure for controlling app permissions may be dependent on the User's device and software."),
                SizedBox(
                  height: 10,
                ),
            Text(
                "Please note that the revoking of such permissions might impact the proper functioning of this Application."),
            SizedBox(
              height: 10,
            ),
            Text(
                "If User grants any of the permissions listed below, the respective Personal Data may be processed (i.e accessed to, modified or removed) by this Application."),
            SizedBox(
              height: 10,
            ),
            Text("Approximate location permission (continuous)", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Used for accessing the User's approximate device location. This Application may collect, use, and share User location Data in order to provide location-based services."),
            SizedBox(
              height: 10,
            ),
            Text("Camera permission", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Used for accessing the camera or capturing images and video from the device."),
            SizedBox(
              height: 10,
            ),
            Text("Contacts permission", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Used for accessing contacts and profiles on the User's device, including the changing of entries."),
            SizedBox(
              height: 10,
            ),
            Text("Microphone permission", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Allows accessing and recording microphone audio from the User's device."),
            SizedBox(
              height: 10,
            ),
            Text("Social media accounts permission", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Used for accessing the User's social media account profiles, such as Facebook and Twitter."),
            SizedBox(
              height: 10,
            ),

            Divider(),
            SizedBox(
              height: 30,
            ),

            Text("Detailed information on the processing of Personal Data", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Personal Data is collected for the following purposes and using the following services:"),
            SizedBox(
              height: 10,
            ),

              Text("Device permissions for Personal Data access", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Text("This Application requests certain permissions from Users that allow it to access the User's device Data as described below."),
                SizedBox(
                  height: 10,
                ),
                Text("Device permissions for Personal Data access (this Application)",style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Text("This Application requests certain permissions from Users that allow it to access the User's device Data as summarized here and described within this document."),
                SizedBox(
                  height: 10,
                ),
                Text("Personal Data processed: Approximate location permission (continuous); Camera permission; Contacts permission; Microphone permission; Social media accounts permission."),
                SizedBox(
                  height: 10,
                ),

Text("Registration and authentication provided directly by this Application", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text("By registering or authenticating, Users allow this Application to identify them and give them access to dedicated services. The Personal Data is collected and stored for registration or identification purposes only. The Data collected are only those necessary for the provision of the service requested by the Users."),
            SizedBox(
              height: 10,
            ),
            Text("Direct registration (this Application)", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text("The User registers by filling out the registration form and providing the Personal Data directly to this Application."),
            SizedBox(
              height: 10,
            ),
            Text("Personal Data processed: email address; password."),








          Divider(),
            SizedBox(
              height: 30,
            ),

            Text("Information on opting out of interest-based advertising", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(
              height: 10,
            ),
            Text(
                "In addition to any opt-out feature provided by any of the services listed in this document, Users may follow the instructions provided by YourOnlineChoices (EU), the Network Advertising Initiative (US) and the Digital Advertising Alliance (US), DAAC (Canada), DDAI (Japan) or other similar initiatives. Such initiatives allow Users to select their tracking preferences for most of the advertising tools. The Owner thus recommends that Users make use of these resources in addition to the information provided in this document."),
            SizedBox(
              height: 10,
            ),
            Text(
                "The Digital Advertising Alliance offers an application called AppChoices that helps Users to control interest-based advertising on mobile apps."),
            SizedBox(
              height: 10,
            ),
            Text(
                "Users may also opt out of certain advertising features through applicable device settings, such as the device advertising settings for mobile phones or ads settings in general."),
            SizedBox(
              height: 10,
            ),

            Divider(),
            SizedBox(
              height: 30,
            ),

            Text("Further Information for Users", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(
              height: 10,
            ),
            Text("Legal basis of processing", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "The Owner may process Personal Data relating to Users if one of the following applies:"),
            SizedBox(
              height: 10,
            ),
            Text(
                " - Users have given their consent for one or more specific purposes."),
            SizedBox(
              height: 10,
            ),
            Text(
                " - provision of Data is necessary for the performance of an agreement with the User and/or for any pre-contractual obligations thereof;"),
            SizedBox(
              height: 10,
            ),
            Text(
                " - processing is necessary for compliance with a legal obligation to which the Owner is subject;"),
            SizedBox(
              height: 10,
            ),
            Text(
                " - processing is related to a task that is carried out in the public interest or in the exercise of official authority vested in the Owner;"),
            SizedBox(
              height: 10,
            ),
            Text(
                " - processing is necessary for the purposes of the legitimate interests pursued by the Owner or by a third party."),
            SizedBox(
              height: 10,
            ),
            Text(
                "In any case, the Owner will gladly help to clarify the specific legal basis that applies to the processing, and in particular whether the provision of Personal Data is a statutory or contractual requirement, or a requirement necessary to enter into a contract."),
            SizedBox(
              height: 10,
            ),

            Text("Further information about retention time", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Unless specified otherwise in this document, Personal Data shall be processed and stored for as long as required by the purpose they have been collected for and may be retained for longer due to applicable legal obligation or based on the Users’ consent."),
            SizedBox(
              height: 10,
            ),
            Text("Therefore:"),
            SizedBox(
              height: 10,
            ),
            Text(
                " - Personal Data collected for purposes related to the performance of a contract between the Owner and the User shall be retained until such contract has been fully performed."),
            SizedBox(
              height: 10,
            ),
            Text(
                " - Personal Data collected for the purposes of the Owner’s legitimate interests shall be retained as long as needed to fulfill such purposes. Users may find specific information regarding the legitimate interests pursued by the Owner within the relevant sections of this document or by contacting the Owner."),
            SizedBox(
              height: 10,
            ),
            Text(
                "The Owner may be allowed to retain Personal Data for a longer period whenever the User has given consent to such processing, as long as such consent is not withdrawn. Furthermore, the Owner may be obliged to retain Personal Data for a longer period whenever required to fulfil a legal obligation or upon order of an authority."),
            SizedBox(
              height: 10,
            ),
            Text(
                "Once the retention period expires, Personal Data shall be deleted. Therefore, the right of access, the right to erasure, the right to rectification and the right to data portability cannot be enforced after expiration of the retention period."),
            SizedBox(
              height: 10,
            ),

            Text(
                "The rights of Users based on the General Data Protection Regulation (GDPR)", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Users may exercise certain rights regarding their Data processed by the Owner."),
            SizedBox(
              height: 10,
            ),
            Text(
                "In particular, Users have the right to do the following, to the extent permitted by law:"),
            SizedBox(
              height: 10,
            ),
            Text(
                " - Withdraw their consent at any time. Users have the right to withdraw consent where they have previously given their consent to the processing of their Personal Data."),
            SizedBox(
              height: 10,
            ),
            Text(
                " - Object to processing of their Data. Users have the right to object to the processing of their Data if the processing is carried out on a legal basis other than consent."),
            SizedBox(
              height: 10,
            ),
            Text(
                " - Access their Data. Users have the right to learn if Data is being processed by the Owner, obtain disclosure regarding certain aspects of the processing and obtain a copy of the Data undergoing processing."),
            SizedBox(
              height: 10,
            ),
            Text(
                " - Verify and seek rectification. Users have the right to verify the accuracy of their Data and ask for it to be updated or corrected."),
            SizedBox(
              height: 10,
            ),
            Text(
                " - Restrict the processing of their Data. Users have the right to restrict the processing of their Data. In this case, the Owner will not process their Data for any purpose other than storing it."),
            SizedBox(
              height: 10,
            ),
            Text(
                " - Have their Personal Data deleted or otherwise removed. Users have the right to obtain the erasure of their Data from the Owner."),
            SizedBox(
              height: 10,
            ),
            Text(
                " - Receive their Data and have it transferred to another controller. Users have the right to receive their Data in a structured, commonly used and machine readable format and, if technically feasible, to have it transmitted to another controller without any hindrance."),
            SizedBox(
              height: 10,
            ),
            Text(
                " - Lodge a complaint. Users have the right to bring a claim before their competent data protection authority."),
            SizedBox(
              height: 10,
            ),
            Text(
                "Users are also entitled to learn about the legal basis for Data transfers abroad including to any international organization governed by public international law or set up by two or more countries, such as the UN, and about the security measures taken by the Owner to safeguard their Data."),
            SizedBox(
              height: 10,
            ),

            Text("Details about the right to object to processing", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Where Personal Data is processed for a public interest, in the exercise of an official authority vested in the Owner or for the purposes of the legitimate interests pursued by the Owner, Users may object to such processing by providing a ground related to their particular situation to justify the objection."),
            SizedBox(
              height: 10,
            ),
            Text(
                "Users must know that, however, should their Personal Data be processed for direct marketing purposes, they can object to that processing at any time, free of charge and without providing any justification. Where the User objects to processing for direct marketing purposes, the Personal Data will no longer be processed for such purposes. To learn whether the Owner is processing Personal Data for direct marketing purposes, Users may refer to the relevant sections of this document."),
            SizedBox(
              height: 10,
            ),
            Text("How to exercise these rights", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Any requests to exercise User rights can be directed to the Owner through the contact details provided in this document. Such requests are free of charge and will be answered by the Owner as early as possible and always within one month, providing Users with the information required by law. Any rectification or erasure of Personal Data or restriction of processing will be communicated by the Owner to each recipient, if any, to whom the Personal Data has been disclosed unless this proves impossible or involves disproportionate effort. At the Users’ request, the Owner will inform them about those recipients."),
            SizedBox(
              height: 10,
            ),
Divider(),
            SizedBox(height: 30,),
            Text("Additional information about Data collection and processing", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(
              height: 10,
            ),
            Text("Legal action", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),

            Text(
                "The User's Personal Data may be used for legal purposes by the Owner in Court or in the stages leading to possible legal action arising from improper use of this Application or the related Services."),
            SizedBox(
              height: 10,
            ),
            Text(
                "The User declares to be aware that the Owner may be required to reveal personal data upon request of public authorities."),
            SizedBox(
              height: 10,
            ),
            Text("Additional information about User's Personal Data", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "In addition to the information contained in this privacy policy, this Application may provide the User with additional and contextual information concerning particular Services or the collection and processing of Personal Data upon request."),
            SizedBox(
              height: 10,
            ),
            Text("System logs and maintenance", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "For operation and maintenance purposes, this Application and any third-party services may collect files that record interaction with this Application (System logs) or use other Personal Data (such as the IP Address) for this purpose."),
            SizedBox(
              height: 10,
            ),
            Text("Information not contained in this policy", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "More details concerning the collection or processing of Personal Data may be requested from the Owner at any time. Please see the contact information at the beginning of this document."),
            SizedBox(
              height: 10,
            ),
            Text("Changes to this privacy policy", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "The Owner reserves the right to make changes to this privacy policy at any time by notifying its Users on this page and possibly within this Application and/or - as far as technically and legally feasible - sending a notice to Users via any contact information available to the Owner. It is strongly recommended to check this page often, referring to the date of the last modification listed at the bottom."),
            SizedBox(
              height: 10,
            ),
            Text(
                " Should the changes affect processing activities performed on the basis of the User’s consent, the Owner shall collect new consent from the User, where required."),
            SizedBox(
              height: 10,
            ),
Divider(),
            SizedBox(height: 30,),
            Text("Definitions and legal references", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            SizedBox(
              height: 10,
            ),
            Text("Personal Data (or Data)", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Any information that directly, indirectly, or in connection with other information — including a personal identification number — allows for the identification or identifiability of a natural person."),
            SizedBox(
              height: 10,
            ),
            Text(" Usage Data", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Information collected automatically through this Application (or third-party services employed in this Application), which can include: the IP addresses or domain names of the computers utilized by the Users who use this Application, the URI addresses (Uniform Resource Identifier), the time of the request, the method utilized to submit the request to the server, the size of the file received in response, the numerical code indicating the status of the server's answer (successful outcome, error, etc.), the country of origin, the features of the browser and the operating system utilized by the User, the various time details per visit (e.g., the time spent on each page within the Application) and the details about the path followed within the Application with special reference to the sequence of pages visited, and other parameters about the device operating system and/or the User's IT environment."),
            SizedBox(
              height: 10,
            ),
            Text("User", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "The individual using this Application who, unless otherwise specified, coincides with the Data Subject."),
            SizedBox(
              height: 10,
            ),
            Text("Data Subject", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text("The natural person to whom the Personal Data refers."),
            SizedBox(
              height: 10,
            ),
            Text("Data Processor (or Processor)", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                " The natural or legal person, public authority, agency or other body which processes Personal Data on behalf of the Controller, as described in this privacy policy."),
            SizedBox(
              height: 10,
            ),
            Text("Data Controller (or Owner)", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "The natural or legal person, public authority, agency or other body which, alone or jointly with others, determines the purposes and means of the processing of Personal Data, including the security measures concerning the operation and use of this Application. The Data Controller, unless otherwise specified, is the Owner of this Application."),
            SizedBox(
              height: 10,
            ),
            Text("This Application", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text("The means by which the Personal Data of the User is collected and processed."),
                SizedBox(
                  height: 10,
                ),
            Text("Service", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),

            Text(
                "The service provided by this Application as described in the relative terms (if available) and on this site/application."),
            SizedBox(
              height: 10,
            ),
            Text("European Union (or EU)", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Unless otherwise specified, all references made within this document to the European Union include all current member states to the European Union and the European Economic Area."),
            SizedBox(
              height: 10,
            ),
            Text("Cookie", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Cookies are Trackers consisting of small sets of data stored in the User's browser."),
            SizedBox(
              height: 10,
            ),
            Text("Tracker", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "Tracker indicates any technology - e.g Cookies, unique identifiers, web beacons, embedded scripts, e-tags and fingerprinting - that enables the tracking of Users, for example by accessing or storing information on the User’s device."),
            SizedBox(
              height: 10,
            ),
            Divider(),
                SizedBox(
                  height: 30,
                ),
            Text("Legal information", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text(
                "This privacy policy relates solely to this Application, if not stated otherwise within this document."),
            SizedBox(
              height: 10,
            ),

Divider(),
            SizedBox(
              height: 30,
            ),
            Text("Latest update: August 25, 2023"),

          Text("Anthony Dalibert hosts this content and only collects the Personal Data strictly necessary for it to be provided."),

            ]),
        ),
      ),
    );
  }
}
