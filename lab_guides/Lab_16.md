
List of Scripts and Tools
=========================

You may get related demo scripts from the GitHub link.
In addition, there is a Virtual Box Ubuntu installed with all the tools
mentioned in this course. The credentials of the Ubuntu are listed here:

-   Username: [osbox]
-   Password: [osbox.org]


List of sample scripts
======================

The following table gives the description of files/scripts used:

+-----------------------------------+-----------------------------------+
| **Name of files/scripts**         | **Description**                   |
+-----------------------------------+-----------------------------------+
| [nmap\_NodeGoat.robot]      | This demonstrates how to apply    |
|                                   | Robot Framework with NMAP.        |
+-----------------------------------+-----------------------------------+
| [nmap                             | This is the BDD framework Gauntlt |
| \_NodeGoat\_gauntlt.attack] | testing script that defines NMAP  |
|                                   | scan against NodeGoat.            |
+-----------------------------------+-----------------------------------+
| [NodeGoat\_SignIn.py]       | Selenium Python script to do the  |
|                                   | sign-in of the NodeGoat website.  |
+-----------------------------------+-----------------------------------+
| [NodeGoat.jmx]              | JMeter data-driven testing to     |
|                                   | sign in the NodeGoat website with |
|                                   | the [sqli.csv] payloads.    |
+-----------------------------------+-----------------------------------+
| [MyRequest.jmx]             | JMeter data-driven testing to     |
|                                   | sign in the                       |
|                                   | [demo.testfire.net] with    |
|                                   | the [sqli.csv] payloads.    |
+-----------------------------------+-----------------------------------+
| [RF\_DDT.robot]             | Robot Framework data-driven       |
|                                   | testing to sign in to the         |
|                                   | NodeGoat with the                 |
|                                   | [sqli.csv] payloads.        |
+-----------------------------------+-----------------------------------+
| [Selenium Proxy Sample.py]  | Selenium Python script to         |
|                                   | demonstrate how to define proxy   |
|                                   | in the browser profile.           |
+-----------------------------------+-----------------------------------+
| [SignIn\_DDT.py]            | Selenium Python data-driven       |
|                                   | testing scrip to sign in testfire |
|                                   | with [sqli.csv] data.       |
+-----------------------------------+-----------------------------------+
| [SignIn\_DDT\_NodeGoat.py]  | Selenium Python data-driven       |
|                                   | testing scrip to sign in to       |
|                                   | NodeGoat with [sqli.csv]    |
|                                   | data.                             |
+-----------------------------------+-----------------------------------+
| [sqli.csv]                  | Sample security data payloads     |
|                                   | from the FuzzDB.                  |
| `cmdi.csv`                  |                                   |
+-----------------------------------+-----------------------------------+
| [UserRegistration.py]       | The Selenium Python script        |
|                                   | demonstrates user registration    |
|                                   | with predefined data on the       |
|                                   | website:                          |
|                                   | <h                                |
|                                   | ttp://hackazon.webscantest.com/>. |
+-----------------------------------+-----------------------------------+


List of installed tools in virtual image
========================================

The password of the [root] is [osboxes.org]. Here are some
of the tools installed in the VM and their usage:

+-----------------------------------+-----------------------------------+
| **Installed Tools**               | **Description and Usage**         |
+-----------------------------------+-----------------------------------+
| [NodeGoat]                  | Vulnerable source code of         |
|                                   | NodeGoat project.                 |
+-----------------------------------+-----------------------------------+
| [0d1n]                      | This is used for fuzz testing.    |
|                                   | Use the keyword \^ for the fuzz   |
|                                   | testing data.                     |
|                                   |                                   |
|                                   | [\$ ./0d1n]                 |
+-----------------------------------+-----------------------------------+
| [androwarn]                 | It\'s a static code analyzer for  |
|                                   | malicious Android applications.   |
|                                   |                                   |
|                                   | [\$ python androwarn.py           |
|                                   | \--help]                    |
+-----------------------------------+-----------------------------------+
| [archerysec]                | This is an Open Source            |
|                                   | Vulnerability Assessment and      |
|                                   | Management that helps developers  |
|                                   | and pentesters perform scans and  |
|                                   | manage vulnerabilities.           |
|                                   |                                   |
|                                   | [\$ docker pull                   |
|                                   | archerysec/archerysec]\     |
|                                   | [\$ docker run -it -p 8000:8000   |
|                                   | ar                                |
|                                   | cherysec/archerysec:latest] |
+-----------------------------------+-----------------------------------+
| [qark]                      | This is a Python tool to look for |
|                                   | several security-related Android  |
|                                   | application vulnerabilities.      |
|                                   |                                   |
|                                   | [\$python qarkMain.py ]     |
+-----------------------------------+-----------------------------------+
| [radamsa]                   | This is a dynamic fuzz data       |
|                                   | generator.                        |
|                                   |                                   |
|                                   | [\$echo \"Sample Data\" \|        |
|                                   | radamsa]                    |
+-----------------------------------+-----------------------------------+
| [RetireJS]                  | This scans the JavaScript         |
|                                   | libraries for known vulnerable    |
|                                   | components.                       |
|                                   |                                   |
|                                   | [\$ retire]                 |
+-----------------------------------+-----------------------------------+
| [gauntlt]                   | This is the BDD security testing  |
|                                   | framework.                        |
|                                   |                                   |
|                                   | [\$ gauntlt ]               |
+-----------------------------------+-----------------------------------+
| [DumpsterDiver]             | This searches the password, key,  |
|                                   | or hash by using entropy values.  |
|                                   |                                   |
|                                   | [\$ python                        |
|                                   | DumpsterDiver.py]           |
+-----------------------------------+-----------------------------------+
| [robotframework]            | This is an acceptance testing     |
|                                   | framework.                        |
|                                   |                                   |
|                                   | [\$ robot \--help]          |
+-----------------------------------+-----------------------------------+
| [sslscan]                   | This is used to inspect the       |
|                                   | secure configurations of the SSL. |
|                                   |                                   |
|                                   | [\$ sslscan]                |
+-----------------------------------+-----------------------------------+
| [wfuzz]                     | This is a web fuzz testing tool.  |
|                                   | Use the keyword FUZZ to apply the |
|                                   | fuzz testing data.                |
|                                   |                                   |
|                                   | [\$ wfuzz -w xss.csv \--hc 404    |
|                                   | ht                                |
|                                   | tp://\<target\_host\>/FUZZ] |
+-----------------------------------+-----------------------------------+
| [zap-cli]                   | This can operate and automate the |
|                                   | ZAP scanning under CLI mode.      |
|                                   |                                   |
|                                   | [\$ zap-cli \--help]        |
+-----------------------------------+-----------------------------------+
| [vulscan]                   | This scans known vulnerabilities. |
|                                   |                                   |
|                                   | [\$ nmap \--script vulscan.nse    |
|                                   | \<host\>]                   |
+-----------------------------------+-----------------------------------+
| [grep-it.sh]                | This searches for security issues |
|                                   | in source code by using GREP.     |
|                                   |                                   |
|                                   | [\$ grep-it.sh]             |
+-----------------------------------+-----------------------------------+
| [goatdroid.apk]\            | These are Vulnerable APKs, which  |
| [InsecureBankv2.apk]        | we demonstrated in case studies.  |
+-----------------------------------+-----------------------------------+
| [Mobile Security Framework] | This is Mobile                    |
|                                   |                                   |
|                                   | [\$docker pull                    |
|                                   | opensecurity/mobile               |
|                                   | -security-framework-mobsf]\ |
|                                   | [\$docker run -it -p 8000:8000    |
|                                   | opensecurity/mobile-secur         |
|                                   | ity-framework-mobsf:latest] |
|                                   |                                   |
|                                   | Launch browser with               |
|                                   | [http://127.0.0.1:8000/] to |
|                                   | access the MobSF Web interface.   |
+-----------------------------------+-----------------------------------+
| [ZAP]                       | OWASP ZAP Web security scanner.   |
|                                   |                                   |
|                                   | [\$ owasp-zap]              |
+-----------------------------------+-----------------------------------+
| [NMAP]                      | Network security scanner.         |
|                                   |                                   |
|                                   | [\$ namp]                   |
+-----------------------------------+-----------------------------------+
| [DejectDojo]                | OWASP DejectDojo To manage        |
|                                   | testing findings and reports.     |
|                                   |                                   |
|                                   | [\$ docker run -it -p 8000:8000   |
|                                   | appsecpipeline/django-defectdojo  |
|                                   | bash -c \"export                  |
|                                   | LOAD\_SAMPLE\_DATA=True && bash   |
|                                   | /opt/django-DefectDojo/do         |
|                                   | cker/docker-startup.bash\"] |
+-----------------------------------+-----------------------------------+
| [RapidScan]                 | Python script to execute several  |
|                                   | security testing tools.           |
|                                   |                                   |
|                                   | [\$ python rapidscan.py]    |
+-----------------------------------+-----------------------------------+
