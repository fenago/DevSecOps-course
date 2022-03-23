
Infrastructure Security
=======================

The topics to be covered in this lab are as follows:

-   The scope of infrastructure security
-   Secure configuration best practices
-   Network security assessments with Nmap
-   CVE vulnerability scanning
-   HTTPS security check with SSLyze

OpenSCAP security guide
=======================

The OpenSCAP is mainly focused on OS secure configuration guides that
can be found at <https://static.open-scap.org/>. In addition, OpenSCAP
also provides several kinds of scanning tools to check the
configurations, such as OpenSCAP Base, SCAP Workbench, and OpenSCAP
Daemon. We will demonstrate the uses of SCAP Workbench in the following
section:


![](./images/d553e874-715f-4cee-8fe1-ec606a6d7aa4.png)



Step 1 -- installation of SCAP workbench
========================================

SCAP Workbench is one of secure configuration scanning tool that
provides the GUI to do remote scanning. The SCAP Workbench tool has been downloaded in the lab environment: <https://github.com/OpenSCAP/scap-workbench/releases>.


Step 2 -- OpenSCAP security guide
=================================

Once the package MSI installer [scap-workbench-1.1.5-1.msi] is
downloaded and installed, launch the [scap-workbench.exe]. It will
ask you to load a security profile. We selected RHEL7 in our example.
You may specify the SSH host to do the scanning.

The following screenshot shows how SCAP works:


![](./images/fcc42c77-ee50-4571-b0f0-0d1e117fc27d.png)




Network security assessments with Nmap
======================================


The common network security assessment scenario and Nmap commands are
listed in the following table:

![](./images/s3.png)


Known vulnerable components scan by OWASP dependency check
==========================================================

Here we demonstrate the uses of the command line version of OWASP
dependency check for local files scanning.



Step 1 -- installation of OWASP dependency check
================================================

The OWASP dependency check provides JAR, which can be executed under
command line. It also provides Marven, Gradle, and Jenkins plugins. In
our example, to reduce any required dependencies, we will use the
command-line version for the demonstration. Download the ZIP file and
unzip it, as follows:

<https://www.owasp.org/index.php/OWASP_Dependency_Check>.



Step 2 -- CVE scanning with OWASP dependency check
==================================================

In our demonstration, we specify to scan the [d:\\tools\\Jmeter5],
and output the testing report under existing folder which will be
[\\dependency-check\\bin], as follows:


```
dependency-check.bat   --project   Testing   --out   .   --scan   d:\tools\Jmeter5
```


The following screenshot shows the execution results of executing the
listed command:


![](./images/45a54877-65d7-49d6-bb34-fb61d4a51d83.png)


Once the scanning is done, you may find the
[dependency-check-report.html] under the
[\\dependency-check\\bin].

Here is the sample of dependency check output HTML report:


![](./images/1.png)

Click one of the Vulnerability to get details:

![](./images/2.png)


In addition to security vulnerabilities issues, the uses of open source
also need to pay attention to the license types and restrictions such as
GPL or LGPL. The suggested open source tools that can do the license
scanning are: Askalono, Licensee, LiD, and ScanCode.



HTTPS security check with SSLyze
================================

The following table lists common HTTPS security testing scenario and the
uses of SSLyze:

![](./images/s4.png)

To execute the SSLyze under Windows, refer to the following command:

```
sslyze demo.testfire.net
```


The [sslyze \--help] will list the detailed usage of each command
option:


![](./images/732cd8d2-ff31-4fe8-aa34-bae0399e182d.png)



In addition to SSyze, the **Mozilla TLS Observatory** also provides a
suite of tools to scan the TLS services. For an online version of TLS
check, refer to
[https://observatory.mozilla.org](https://observatory.mozilla.org/).




Summary
=======

In this lab, we discussed the infrastructure security, which
includes security scanning for known vulnerable components, secure
configuration, and secure communication. For the secure configuration,
the CIS benchmarks, STIGs, and the OpenSCAP security guide are the
guidelines we can follow. For the vulnerable components scanning, we
demonstrated two technical approaches. One is CVE scanning with NMAP
network scanning and the other is file scanning with OWASP dependency
check. For the secure communication, we introduced SSLyze for the HTTPS
commutation settings.

In the next lab, we will introduce more BDD automation frameworks to
apply to security testing.
