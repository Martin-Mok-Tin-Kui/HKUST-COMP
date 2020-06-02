<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>

	<xsl:template match="/">

		<html>
			<head>
				<title>Course List (sorted)</title>
			</head>
		
			<body>
				<xsl:apply-templates select="department">
					<xsl:with-param name="sort-key">code</xsl:with-param>
				</xsl:apply-templates>

				<xsl:apply-templates select="department">
					<xsl:with-param name="sort-key">title</xsl:with-param>
				</xsl:apply-templates>
			</body>
		</html>

	</xsl:template>
	
	<xsl:template match="department">
		<xsl:param name="sort-key">code</xsl:param>

		<h1><xsl:apply-templates select="name"/></h1>

		<xsl:choose>
			<xsl:when test="$sort-key='code'">(sorted by course code)</xsl:when>
			<xsl:when test="$sort-key='title'">(sorted by course title)</xsl:when>
		</xsl:choose>

		<table border="1">
			<tr>
				<th/>
				<th>
					COURSE CODE
					<xsl:if test="$sort-key='code'">(sorted)</xsl:if>
				</th>
				<th>
					TITLE
					<xsl:if test="$sort-key='title'">(sorted)</xsl:if>
				</th>
			</tr>
			<xsl:choose>
				<xsl:when test="$sort-key='code'">
					<xsl:apply-templates select="course">
						<xsl:sort select="code"/>
					</xsl:apply-templates>
				</xsl:when>

				<xsl:when test="$sort-key='title'">
					<xsl:apply-templates select="course">
						<xsl:sort select="title"/>
					</xsl:apply-templates>
				</xsl:when>
			</xsl:choose>
		</table>
	</xsl:template>
	
	<xsl:template match="code">
		<td><xsl:value-of select="."/></td>
	</xsl:template>
	
	<xsl:template match="title">
		<td><xsl:value-of select="."/></td>
	</xsl:template>

	<xsl:template match="course">
		<tr>
			<td><b><xsl:value-of select="position()"/></b></td>
			<xsl:apply-templates select="code"/>
			<xsl:apply-templates select="title"/>
		</tr>
	</xsl:template>

</xsl:stylesheet>