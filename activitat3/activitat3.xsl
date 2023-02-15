<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
<body>
  
  <h2>Mis peliculas favoritas</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Titulo</th>
      <th style="text-align:left">Genero</th>
      <th style="text-align:left">Pais</th>
      <th style="text-align:left">Duracion</th>
      <th style="text-align:left">Estreno</th>
      <th style="text-align:left">Puntuacion</th>
    </tr>
    <xsl:for-each select="catalog/peli">
    <tr>
      <td><xsl:value-of select="titulo"/></td>
      <td><xsl:value-of select="genero"/></td>
      <td><xsl:value-of select="pais"/></td>
      <td><xsl:value-of select="duracion"/></td>
      <td><xsl:value-of select="estreno"/></td>
      <xsl:if test="puntuacion &gt;5">
      <td><xsl:value-of select="puntuacion"/></td>
      </xsl:if>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>