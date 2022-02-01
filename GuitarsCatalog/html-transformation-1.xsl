<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title> Guitars Catalog </title>
                <link rel="stylesheet" type="text/css" href="styles.css"/>
            </head>
            <body>
            <center>
              <h1> Каталог за китари </h1>
                <table border="1">
                    <tr bgcolor="#FF5936">
                        <th> Марка </th>
                        <th> Тип </th>
                        <th> Цвят </th>
                        <th> Ориентация </th>
                        <th> Брой струни </th>
                        <th> Цена </th>
                        <th> Снимка </th>
                    </tr>
                    <xsl:for-each select="guitars_catalog/guitars/mainInfo">
                    <tr>
                        <td id="column1"><xsl:value-of select="guitar/brand"/></td>
                        <td><xsl:value-of select="type/@category"/></td>
                        <td><xsl:value-of select="color"/></td>
                        <td><xsl:value-of select="orientation/@hand"/></td>
                        <td><xsl:value-of select="num_of_strings"/></td>
                        <td><xsl:value-of select="cost"/>&#160;<xsl:value-of select="cost/@currency"/></td>
                        <td><img src="images/{image}" width="200" height="200"/></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </center>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>