@echo off
rem
rem Licensed Materials - Property of IBM
rem 5655-G97 (c) Copyright IBM Corp. 2016
rem All Rights Reserved
rem US Government Users Restricted Rights - use,
rem duplication or disclosure restricted by GSA
rem ADP Schedule Contract with IBM Corp.
rem See Copyright Instructions
rem
setlocal
where /q mqsijava.cmd > NUL 2>&1
if errorlevel 1 (
  set MQSIJAVA=java
) else (
  set MQSIJAVA=mqsijava
)
%MQSIJAVA% com.ibm.broker.config.appdev.FlowRendererBAR %*
