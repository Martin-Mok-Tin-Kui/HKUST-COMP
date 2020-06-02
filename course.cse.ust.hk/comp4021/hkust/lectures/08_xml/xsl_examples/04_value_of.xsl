<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>

	<xsl:template match="/">
		<html>
		<body>
			<xsl:apply-templates/>
		</body>
		</html>
	</xsl:template>
	
	<xsl:template match="course">
		<hr/>
		<xsl:apply-templates/>
		<hr/>
	</xsl:template>

	<xsl:template match="code">
		<pre>
			<xsl:value-of select="."/>
		</pre>
	</xsl:template>
	
	<xsl:template match="title">
		<h3>
			<xsl:value-of select="."/>
		</h3>
	</xsl:template>

	<xsl:template match="department"/>

	<xsl:template match="url">
		<xsl:element name="p">
			<xsl:element name="a">
				<xsl:attribute name="href">
					<xsl:value-of select="."/>
				</xsl:attribute>
				course information
			</xsl:element>
			from
			<xsl:value-of select="ancestor::course/department"/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="instructor">
		<b>Instructor: </b>
		<xsl:value-of select="surname"/>,
		<xsl:value-of select="firstname"/>
	</xsl:template>
	
</xsl:stylesheet>