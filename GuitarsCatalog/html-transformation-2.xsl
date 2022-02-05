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
                            <th> Снимка </th>
                            <th> Описание </th>
                        </tr>
                        <xsl:for-each select="guitars_catalog/guitars/descriptions">
                            <tr>
                                <td id="column1" bgcolor="#FF5936"><xsl:value-of select="guitar/brand"/></td>
                                <td><img src="images/{guitar/image}" width="150" height="200"/></td>
                                <td><xsl:value-of select="description"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </center>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>