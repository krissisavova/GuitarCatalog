<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="xml" encoding="UTF-8" indent="yes"/>

    <xsl:template match="guitars_catalog/guitars/productDetails">

        <productDetails><xsl:for-each select="productDetails">
            <guitar>
                <brand><xsl:value-of select="guitar/brand"/></brand>
            </guitar>
            <series>
                <xsl:value-of select="series/@guitarId"/></series>
            <fingerboard_material><xsl:value-of select="fingerboard_material"/></fingerboard_material>
            <condition><xsl:value-of select="condition"/></condition>
            <amount><xsl:value-of select="amount"/></amount>
        </xsl:for-each>
        </productDetails>

        <xsl:value-of
                select="concat(guitar/brand, ' със сериен номер ', series/@guitarId,
                ' е една от нашите най-продавани китари, чието тяло е направено от ',
                fingerboard_material ,', в ', condition,
                ' състояние. Останалите бройки на тази китара са ', amount, '.' )"/>

    </xsl:template>
</xsl:stylesheet>
