<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:java="http://xml.apache.org/xslt/java">
    <xsl:template match="/">
        <html>
            <head>
            </head>
            <body>
                <table style="border: 1px solid black;">
                    <tr bgcolor="#9acd32">
                        <th>ID</th>
                        <th>Member ID</th>
                        <th>First Name</th>
                        <th>ROLE</th>
                        <th>Expertise</th>

                    </tr>
                    <xsl:for-each select="petshop/pet">
                        <tr>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>
                            <td>
                                <xsl:value-of select="name"/>
                            </td>

                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>