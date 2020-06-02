<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>

	<xsl:template match="document">

		<html>
		<head>
			<xsl:apply-templates select="title"/>
		</head>
		<body>
			<xsl:apply-templates select="content"/>
		</body>
		</html>

	</xsl:template>
	
	<xsl:template match="title">
		<title><xsl:apply-templates/></title>
	</xsl:template>

	<xsl:template match="content">
		<p><xsl:apply-templates/></p>
	</xsl:template>

</xsl:stylesheet>