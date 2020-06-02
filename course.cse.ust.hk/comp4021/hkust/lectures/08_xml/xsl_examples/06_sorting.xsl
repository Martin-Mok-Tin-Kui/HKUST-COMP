<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>

	<xsl:template match="/">

		<html>
			<head>
				<title>Course List (sorted)</title>
			</head>
		
			<body>
				<xsl:apply-templates select="department"/>
			</body>
		</html>

	</xsl:template>
	
	<xsl:template match="department">
		<h1><xsl:apply-templates select="name"/></h1>
		<table border="1">
			<tr>
				<th>TITLE (sorted)</th><th>COURSE CODE</th>
			</tr>
			<xsl:for-each select="course">
				<xsl:sort select="title"/>
				<tr>
					<xsl:apply-templates select="title"/>
					<xsl:apply-templates select="code"/>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
	
	<xsl:template match="code">
		<td><xsl:value-of select="."/></td>
	</xsl:template>
	
	<xsl:template match="title">
		<td><xsl:value-of select="."/></td>
	</xsl:template>

</xsl:stylesheet>