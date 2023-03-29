<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="iso-8859-1" omit-xml-declaration="yes" />

	<xsl:template match="ies">
		<html lang="esp">
			<h1>
				<xsl:value-of select="@nombre"/>
			</h1>
			<xsl:apply-templates />
		</html>
	</xsl:template>
	
	<xsl:template match="ciclo">
		<p><xsl:value-of select="nombre"/></p>
	</xsl:template>

</xsl:stylesheet>