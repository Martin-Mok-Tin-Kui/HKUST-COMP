<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>

	<xsl:template match="/">
		<html xmlns:svg="http://www.w3.org/2000/svg">
                        <object id="AdobeSVG" classid="clsid:78156a80-c6a1-4bbf-8e6a-3cd390eeb4e2"></object>
                        <xsl:processing-instruction name="import">namespace="svg" implementation="#AdobeSVG"</xsl:processing-instruction> 

			<body>
				<svg:svg xmlns:svg="http://www.w3.org/2000/svg" width="600" height="400">
					<xsl:apply-templates/>
				</svg:svg>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="rect">
		<xsl:element name="svg:rect" namespace="http://www.w3.org/2000/svg">
			<xsl:attribute name="x"><xsl:value-of select="left"/></xsl:attribute>
			<xsl:attribute name="y"><xsl:value-of select="top"/></xsl:attribute>
			<xsl:attribute name="width"><xsl:value-of select="width"/></xsl:attribute>
			<xsl:attribute name="height"><xsl:value-of select="height"/></xsl:attribute>
			<xsl:attribute name="fill"><xsl:value-of select="color"/></xsl:attribute>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="circle">
		<xsl:element name="svg:circle" namespace="http://www.w3.org/2000/svg">
			<xsl:attribute name="cx"><xsl:value-of select="center/x"/></xsl:attribute>
			<xsl:attribute name="cy"><xsl:value-of select="center/y"/></xsl:attribute>
			<xsl:attribute name="r"><xsl:value-of select="radius"/></xsl:attribute>
			<xsl:attribute name="fill"><xsl:value-of select="color"/></xsl:attribute>
		</xsl:element>
	</xsl:template>
	
</xsl:stylesheet>
