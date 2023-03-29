<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="iso-8859-1" omit-xml-declaration="yes" />

<xsl:template match="/">
    <html>
        <head></head>
        <body>
        <xsl:apply-templates />
        </body>
    </html>
</xsl:template>

<xsl:template match="libro">
<!-- 
    <xsl:template match="biblioteca">
        <xsl:for-each select="libro[.//@ano&lt;1980]"> 
            <xsl:sort select="titulo" order="ascending"/>
            <p>
                <xsl:value-of select="../titulo"/>
            </p>
        </xsl:for-each>
    </xsl:template>
-->


<!--
    <xsl:choose>
        <xsl:when test="titulo='Los pilares de la tierra'">
            <p>
                <xsl:value-of select="titulo"/>
            </p>
            <p>
                <xsl:value-of select="autor"/>
            </p>
            <p>
                <xsl:value-of select="fechaPublicacion/@ano"/>
            </p>
        </xsl:when>
        <xsl:when test="autor='J.R.R. Tolkien'"> 
            <p>
                <xsl:value-of select="autor"/>
            </p>
            <p>
                <xsl:value-of select="titulo"/>
            </p>
        </xsl:when>
        <xsl:otherwise> en cualquier otro caso que no sea ni el primero ni el segundo, coge este (es como un else)
            Esta es la opción por defecto
        </xsl:otherwise>
    </xsl:choose> 
-->    


    <xsl:if test="autor='Philip K. Dick'"> <!--ponemos condiciones para que nos salga un libro en específico-->
    <p>
        <xsl:value-of select="titulo"/>
    </p>
    <p>
        <xsl:value-of select="autor"/>
    </p>
    <p>
        <xsl:value-of select="fechaPublicacion/@ano"/>
    </p>
    <p>
        <img> <!--insertamos esta etiqueta desde el xsl-->
            <xsl:attribute name="src">
                <xsl:value-of select="portada"/>
            </xsl:attribute>
        </img>
    </p>
    <xsl:text>&#10;</xsl:text> <!--salto de línea-->
    </xsl:if>
</xsl:template>
</xsl:stylesheet>