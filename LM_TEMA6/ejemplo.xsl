<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml"></xsl:output> <!--formato de la salida-->

<xsl:template match="/"> <!--le indicamos que nodo vamos a modificar, si ponemos el nodo raíz ("/") se eliminan los elementos quedandonos solo con el texto asi que CUIDADO si luego aplicamos modificaciones a otros elementos porque no los va a encontrar-->
    <!--<xsl:apply-template /> -->
</xsl:template> <!--esta expresión se va poniendo cada vez que quieras modificar un nodo-->

<xsl:template match="/personas/persona/fechaNacimiento">
    <xsl:value-of select="dia"/> <!--para que nos muestre los datos-->
</xsl:template>

</xsl:stylesheet>