<?xml version="1.0"?>
<globals>
    <#include "common/common_globals.xml.ftl" />
    <global id="simpleLayoutName" value="<#if appCompatActivity>${contentLayoutName}<#else>${layoutName}</#if>" />
    <global id="appBarLayoutName" value="${layoutName}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
</globals>
