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
                            <th> Компания </th>
                            <th> Оценка (1-5) </th>
                            <th> Снимка </th>
                        </tr>
                        <xsl:for-each select="guitars_catalog/guitars/guitar[rating &gt; 4.5]">
                            <xsl:sort select="rating" order="descending"/>
                            <tr>
                                <td id="column1" bgcolor="#FF5936"><xsl:value-of select="brand"/></td>
                                <td><xsl:value-of select="company_name"/></td>
                                <td><xsl:value-of select="rating"/></td>
                                <td><img src="{image}" width="150" height="200"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    <br/><br/><br/><br/>
                    <table border="1">
                        <tr bgcolor="#FF5936">
                            <th> Марка </th>
                            <th> Сериен номер </th>
                            <th> Материал на тялото </th>
                            <th> Количество </th>
                            <th> Състояние </th>
                        </tr>
                        <xsl:for-each select="guitars_catalog/guitars/productDetails[condition = ' Отлично ']">
                            <tr>
                                <td id="column1" bgcolor="#FF5936"><xsl:value-of select="guitar/brand"/></td>
                                <td><xsl:value-of select="series/@guitarId"/></td>
                                <td><xsl:value-of select="fingerboard_material"/></td>
                                <td><xsl:value-of select="amount"/></td>
                                <td><xsl:value-of select="condition"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </center>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>