
Secure Code Inspection
======================


This lab will cover the following topics:

-   Secure coding best practices
-   Vulnerable code patterns for every programming language
-   Automating secure code scanning tools


Automatic secure code inspection script in Linux
================================================

For this approach, we recommend an all-in-one shell script, the **Code
Review Audit Script Scanner** (**CRASS**). This one script includes
everything needed for secure code scanning, and it defines the secure
code scanning patterns for Java, JSP, Flex Flash, .NET, PHP, HTML,
Android, iOS, Python, Ruby, and C. It can easily be extended by editing
the [grep-it.sh] file. We may use the same vulnerable Python
project from before as our example for the following steps.


Step 1 -- downloading the CRASS
===============================

`grep-it.sh` script has been downloaded already from here:
[**https://github.com/floyd-fuh/crass/blob/master/grep-it.sh**](https://github.com/floyd-fuh/crass/blob/master/grep-it.sh) in `lab03` folder.


Step 2 -- executing the code review audit scan
==============================================

Following repository contains an example Python API that is vulnerable to several different web API attacks. It has been cloned already in `lab03` folder.
https://github.com/mattvaldes/vulnerable-api

Execute the command with a parameter to specify the target project
folder. The following command will scan the vulnerable source code under
the [/vulnerable-api] folder:


```
cd C:\Users\fenago\Desktop\DevSecOps-course\lab03

bash  grep-it.sh  ./vulnerable-api
```



Step 3 -- reviewing the results
===============================

Once the scanning is done, the scanning results will be output under the
[\\grep-output] folder of the target scanning project.

The scanning results will be generated into files separated by security
topic, as shown in the following diagram:


![](./images/69e424e8-7e0e-4481-8ff4-61509f002917.png)



Automatic secure code inspection tools for Windows
==================================================


For Windows users, the secure code scanning tool **Visual Code Grepper**
(**VCG**) is recommended. It provides not only GUI but also CLI mode. It
supports multiple programming languages, including C/C++, Java, PHP, VB,
and C\#. The default installation comes with details on the predefined
banned and risky functions of each programming language in the
configuration files ([\*.conf]), and the rules can also be easily
customized by editing the configuration files. Here are the steps to
scan the project.


Step 2: Executing VCG
=====================

Executing [VisualCodeGrepper.exe] will directly launch VCG in GUI
mode.

If you would like to execute in console mode, use the following command:


```
VisualCodeGrepper    -c  -v  -t   <DirectoryName>
```


Step 3: Reviewing the VCG scanning results
==========================================

By default, the scanning results will be generated as [test1.csv]
under the installed path. Alternatively, you may also use the [VCG
GUI] \| [File] \| [Import Results from CSV
File] \| [test1.csv] to review the results with
highlighted colors.



Summary
=======

In a case study of this lab, we demonstrated the use of CRASS
to scan vulnerable Python APIs. Furthermore, we also introduced another
generic general secure coding inspection tool, VCG.


In the coming lab, we will apply similar code inspection techniques
to look for sensitive information leakage and privacy security issues.
