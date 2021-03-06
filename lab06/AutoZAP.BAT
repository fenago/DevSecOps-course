echo the status of ZAP

CURL  http://localhost:8090



echo spider scan for the web site

CURL  "http://localhost:8090/JSON/spider/action/scan/?zapapiformat=JSON&formMethod=GET&url=http://demo.testfire.net"



echo Active Scan for the website

CURL   "http://localhost:8090/JSON/ascan/action/scan/?zapapiformat=JSON&formMethod=GET&url=http://demo.testfire.net&recurse=&inScopeOnly=&scanPolicyName=&method=&postData=&contextId="



echo Wait for 20 sec to complete the ActiveScan before generating the testing report

echo The timeout is for Windows command. For running in Linux, please change it to sleep.

timeout  20



echo List the security assessments results (alerts), and output the report to ZAP_Report.HTML

CURL   "http://localhost:8090/JSON/ascan/view/status/"

CURL   "http://localhost:8090/HTML/core/view/alerts/"

CURL   "http://127.0.0.1:8090/OTHER/core/other/htmlreport/?formMethod=GET" > ZAP_Report.HTML



echo shutdown the ZAP

CURL   "http://localhost:8090/JSON/core/action/shutdown/?zapapiformat=JSON&formMethod=GET"