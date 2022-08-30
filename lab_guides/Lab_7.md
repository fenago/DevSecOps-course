
Android Security Testing
========================

The following topics will be covered in this lab:

-   Secure source code review patterns for Android
-   Privacy and sensitive information review
-   General process of APK security analysis
-   Static secure code scanning with QARK


Privacy scanning with Androwarn
===============================

To automate the privacy scanning with APK, we can use the tool Androwarn
which is a Python script to do the privacy information scanning.


Step 1 -- scanning of an APK
============================

The execution of Androwarn takes some parameters, such as the APK, the
report format, the level of verbosity, and the lookup to Google Play.
The Google Play lookup is recommended to be disabled if the testing
environment can\'t connect to the internet, as follows:


```
cd C:\Users\fenago\Desktop\DevSecOps-course\lab07\androwarn

python androwarn.py -i ./_SampleApplication/bin/SampleApplication.apk -r html -v 3
```

For detailed usage of Androwarn, refer to python [androwarn.py -h]



Step 2 -- review the report
===========================

If you have specified the HTML report output in the previous step, then
the report will be generated in the current directory as follows:


![](./images/fa241bdd-6e34-4e4e-893c-d8eb48285626.png)



General process of APK security analysis
========================================


This is a list of the tools for the reverse engineering of APK and
security analysis:

![](./images/s2.png)


Step 1 -- use APKTool to reverse the APK to Manifest.xml, Smali and resources
=============================================================================

The purpose of this step is to generate the Smali, resource files, and
[manifest.xml] for initial security analysis. There are some
security issues that can be identified by these file types, such as
sensitive information exposure and incorrect permission settings, as
follows:


```
cd C:\Users\fenago\Desktop\DevSecOps-course\lab07

Java  –jar  apktool_2.1.0.jar   d  goatdroid.apk   -o  JavaSource1  -f 
```

![](./images/s36.png)


Step 2 -- use JADX to reverse the APK into Java source code
===========================================================

This will reverse the APK into Java source code. Then, we can do static
secure code scanning in the next setup. Launch `jadx-gui-1.3.4.exe` located in **Desktop\DevSecOps-course\lab07** folder to start Jadx GUI:

![](./images/s38.png)

![](./images/s39.png)

![](./images/s40.png)

To save Java source code, Click **File** and select **Save All** and save in `JavaSource2` folder.

Step 3 -- APK scanning with QARK
================================

To scan the APK, execute the python script [qarkMain.py] with parameters, as follows:


```
cd C:\Users\fenago\Desktop\DevSecOps-course\lab07

qark --java ./JavaSource2
```

![](./images/s41.png)

Step 3 -- review the results
============================

The report will be generated under the [C:\Python310\Lib\site-packages\qark\report\report.html].
The following screenshot shows the scanning report of the `goatdroid.apk` source code:

![](./images/s42.png)


Summary
=======

To automate these security and privacy security reviews, we applied
different tools based on the scenario. Androwarn is
used to do privacy scanning for any APK files. We used QARK to do the
automated APK static security scanning.

In the next lab, we will discuss the infrastructure security for
system hardening, secure communication and configurations.

