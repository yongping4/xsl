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
    </tr>
    <xsl:for-each select="catalog/peli">
    <tr>
      <td><xsl:value-of select="titulo"/></td>
      <td><xsl:value-of select="genero"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>