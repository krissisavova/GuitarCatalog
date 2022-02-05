<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="text" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        Каталог за китари

        <xsl:for-each select="guitars_catalog/guitars/productDetails">
            Марка: <xsl:value-of select="guitar/brand"/>
            Сериен номер: <xsl:value-of select="series/@guitarId"/>
            Материал на грифа: <xsl:value-of select="fingerboard_material"/>
            Бройки: <xsl:value-of select="amount"/>
            Състояние: <xsl:value-of select="condition"/>
            В комплект с: <xsl:value-of select="comingWith"/>
            Налична: <xsl:value-of select="@isAvailable"/>
            ---------------------------------

        </xsl:for-each>

    </xsl:template>

</xsl:stylesheet>





