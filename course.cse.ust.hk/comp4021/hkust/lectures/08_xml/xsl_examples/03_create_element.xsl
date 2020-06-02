<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>

	<xsl:template match="/">
		<xsl:element name="html">
			<xsl:element name="body">
				<xsl:apply-templates/>
			</xsl:element>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="course">
		<xsl:element name="hr"/>
			<xsl:apply-templates/>
		<xsl:element name="hr"/>
	</xsl:template>

	<xsl:template match="code">
		<xsl:element name="pre">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="title">
		<xsl:element name="h3">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>

	<xsl:template match="url">
		<xsl:element name="p">
			<xsl:element name="a">
				<xsl:attribute name="href">
					<xsl:apply-templates/>
				</xsl:attribute>
				course information
			</xsl:element>
		</xsl:element>
	</xsl:template>

</xsl:stylesheet>	