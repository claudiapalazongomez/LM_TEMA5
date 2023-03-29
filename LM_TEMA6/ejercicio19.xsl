<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="iso-8859-1" omit-xml-declaration="yes" />

	<xsl:template match="/">
		<html lang="es">
				<xsl:apply-templates />
		</html>
	</xsl:template>
	
	
	<xsl:template match="horario">
		<xsl:for-each select="dia">
			<xsl:if test="numdia>=3">
				<p>DIA : <xsl:value-of select="numdia" /></p>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	
	<!-- 
	<xsl:template match="dia[numdia&alt;3] />
	<xsl:template match="dia">
		<p>DIA : <xsl:value-of select="numdia" /></p>
	</xsl:template>
	-->
</xsl:stylesheet>