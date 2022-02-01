<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="xml" encoding="UTF-8" indent="yes"/>

<xsl:template match="guitars_catalog/guitars/descriptions">

    <descriptions>
        <xsl:for-each select="descriptions">
            <guitar>
                <brand><xsl:value-of select="guitar/brand"/></brand>
                <image><img src="images/{image}" width="420" height="400"/></image>
            </guitar>
            <description><xsl:value-of select="description" /></description>
        </xsl:for-each>
    </descriptions>

    <xsl:value-of select="concat('Описание за китарата ',
        guitar/brand, ':', description)"/>

</xsl:template>

</xsl:stylesheet>

