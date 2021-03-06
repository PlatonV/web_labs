<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
      <head>
          <link rel="stylesheet" type="text/css" href="style.css"/>
      </head>
  <body>
    <h2>Movies</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Title</th>
        <th>Actors</th>
        <th>Genre</th>
        <th>Date</th>
        <th>Duration</th>
      </tr>
      <xsl:for-each select="movies/movie">
        <tr>
            <xsl:attribute name="class">
                <xsl:if test="genre='Action'">class1</xsl:if>
                <xsl:if test="genre='Comedy'">class2</xsl:if>
                <xsl:if test="genre='Drama'">class3</xsl:if>
            </xsl:attribute>
          <td><xsl:value-of select="title"/></td>
          <td><xsl:value-of select="actors"/></td>
          <td><xsl:value-of select="genre"/></td>
          <td><xsl:value-of select="date"/></td>
          <td><xsl:value-of select="duration"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
