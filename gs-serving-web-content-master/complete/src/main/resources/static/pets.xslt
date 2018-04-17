<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:java="http://xml.apache.org/xslt/java">
    <xsl:template match="/">
        <xsl:variable name="recordCount" select="count(petshop/pet/temperament/type)"/>

        <style>
            table {
            border-collapse: collapse;
            border: 1px solid black;
            }

            th,td {
            border: 1px solid black;
            }

            table.a {
            table-layout: auto;
            width: 180px;
            }

            table.b {
            table-layout: fixed;
            width: 180px;
            }

            table.c {
            table-layout: auto;
            width: 100%;
            }

            table.d {
            table-layout: fixed;
            width: 100%;
            }
        </style>

        <table style="border: 1px solid black;">
            <tr bgcolor="#9acd32">
                <th>ID</th>
                <td>Name</td>
                <td>Age</td>
                <td>Race</td>
                <td colspan="{$recordCount}">Temperament</td>
                <td>Category</td>
                <td>Gender</td>
                <td>Birthdate</td>
                <td>Length</td>
                <td>Price</td>
                <td>Pedigri</td>
                <td>Height</td>
                <td>Details</td>
                <td>Picture</td>
            </tr>
            <xsl:for-each select="petshop/pet">
                <tr>
                    <td>
                        <xsl:value-of select="id"/>
                    </td>
                    <td>
                        <xsl:value-of select="name"/>
                    </td>
                    <td>
                        <xsl:value-of select="age"/>
                    </td>
                    <td>
                        <xsl:value-of select="race"/>
                    </td>

                    <xsl:for-each select="temperament/type">
                        <td>
                            <xsl:value-of select="."/>
                        </td>
                    </xsl:for-each>

                    <td>
                        <xsl:value-of select="category"/>
                    </td>
                    <td>
                        <xsl:value-of select="gender"/>
                    </td>
                    <td>
                        <xsl:value-of select="birthDate"/>
                    </td>
                    <td>
                        <xsl:value-of select="length"/>
                    </td>
                    <td>
                        <xsl:value-of select="price"/>
                    </td>
                    <td>
                        <xsl:value-of select="pedigri"/>
                    </td>
                    <td>
                        <xsl:value-of select="height"/>
                    </td>
                    <td>
                        <xsl:value-of select="details"/>
                    </td>
                    <td>
                        <xsl:value-of select="pictureURL"/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>

    </xsl:template>
</xsl:stylesheet>