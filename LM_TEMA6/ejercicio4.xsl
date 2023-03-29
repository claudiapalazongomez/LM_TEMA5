<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="iso-8859-1" omit-xml-declaration="yes" />

	<xsl:template match="/">
		<html lang="esp">
			<table border="1">
				<xsl:apply-templates />
			</table>
		</html>
	</xsl:template>
	
	<xsl:template match="ciclo">
		<tr><td><xsl:value-of select="nombre"/></td></tr>
	</xsl:template>

</xsl:stylesheet>