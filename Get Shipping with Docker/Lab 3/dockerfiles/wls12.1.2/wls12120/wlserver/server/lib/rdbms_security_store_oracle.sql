CREATE TABLE BEACSS_SCHEMA_VERSION (CURRENT_VERSION NUMBER NOT NULL, PRIMARY KEY (CURRENT_VERSION));
CREATE TABLE BEAPC (DOMN VARCHAR2(128) NOT NULL, REALMN VARCHAR2(128) NOT NULL, CREDN VARCHAR2(2000) NOT NULL, CTS TIMESTAMP, PP BLOB, MTS TIMESTAMP, PRIMARY KEY (DOMN, REALMN, CREDN));
CREATE TABLE BEAPCM (DOMN VARCHAR2(128) NOT NULL, REALMN VARCHAR2(128) NOT NULL, CN VARCHAR2(2000) NOT NULL, CTS TIMESTAMP, AN VARCHAR2(256), MN VARCHAR2(256), RN VARCHAR2(256), WCN VARCHAR2(256), WCI VARCHAR2(256), PN VARCHAR2(256), PP VARCHAR2(256), MTS TIMESTAMP, PRIMARY KEY (DOMN, REALMN, CN));
CREATE TABLE BEAPRMP (DOMN VARCHAR2(128) NOT NULL, REALMN VARCHAR2(128) NOT NULL, TYPEN VARCHAR2(30) NOT NULL, CN VARCHAR2(2000) NOT NULL, CTS TIMESTAMP, CA VARCHAR2(256), KAN VARCHAR2(256), KAP VARCHAR2(256), PN VARCHAR2(256), PNIU VARCHAR2(256), RN VARCHAR2(256), WCN VARCHAR2(256), WCI VARCHAR2(256), MTS TIMESTAMP, PRIMARY KEY (DOMN, REALMN, TYPEN, CN));
CREATE TABLE BEARM (DOMN VARCHAR2(128) NOT NULL, REALMN VARCHAR2(128) NOT NULL, CN VARCHAR2(2000) NOT NULL, CTS TIMESTAMP, AN VARCHAR2(256), MN VARCHAR2(256), PN VARCHAR2(256), RN VARCHAR2(256), WCN VARCHAR2(256), WCI VARCHAR2(256), MTS TIMESTAMP, PM_CN VARCHAR2(2000), PRIMARY KEY (DOMN, REALMN, CN));
CREATE TABLE BEASAML2_CACHE (DOMN VARCHAR2(128) NOT NULL, REALMN VARCHAR2(128) NOT NULL, CACHE_NAME VARCHAR2(100) NOT NULL, ENTRY_KEY VARCHAR2(2000) NOT NULL, CTS TIMESTAMP, EXP_TIME NUMBER, ENTRY_VALUE BLOB, MTS TIMESTAMP, PRIMARY KEY (DOMN, REALMN, CACHE_NAME, ENTRY_KEY));
CREATE TABLE BEASAML2_ENDPOINT (DOMN VARCHAR2(128) NOT NULL, REALMN VARCHAR2(128) NOT NULL, BINDING_LOCAL VARCHAR2(384) NOT NULL, BINDING_TYPE VARCHAR2(32) NOT NULL, PARTNER_NAME VARCHAR2(128) NOT NULL, SERVICE_TYPE VARCHAR2(32) NOT NULL, CTS TIMESTAMP, DFT_ENDPOINT NUMBER, DFT_SET NUMBER, IDX NUMBER, MTS TIMESTAMP, PRIMARY KEY (DOMN, REALMN, BINDING_LOCAL, BINDING_TYPE, PARTNER_NAME, SERVICE_TYPE));
CREATE TABLE BEASAML2_IDPPARTNER (DOMN VARCHAR2(128) NOT NULL, REALMN VARCHAR2(128) NOT NULL, NAME VARCHAR2(128) NOT NULL, CTS TIMESTAMP, ARTPOSTFORM VARCHAR2(256), ARTUSEPOST NUMBER, C_PASSSWD VARCHAR2(256), C_PASSWDSET NUMBER, C_USERNAME VARCHAR2(128), CONFM_METHOD VARCHAR2(128), CP_COMPANY VARCHAR2(64), CP_EMAILADD VARCHAR2(64), CP_GIVENNAME VARCHAR2(64), CP_SURNAME VARCHAR2(64), CP_TELENUM VARCHAR2(64), CP_TYPE VARCHAR2(64), DESCRIPTION VARCHAR2(512), ENABLED NUMBER, ENTITYID VARCHAR2(512), ERROR_URL VARCHAR2(512), ISSUER_URI VARCHAR2(512), OG_NAME VARCHAR2(64), OG_URL VARCHAR2(512), PT_TYPE VARCHAR2(64), POSTPOSTFORM VARCHAR2(256), SIGNINGCERT BLOB, TPLAYER_CLIENTCERT BLOB, ARTREQSIGNED NUMBER, IDP_NM_CLASSN VARCHAR2(128), PROC_ATTR NUMBER, VIRUSER_ENABLED NUMBER, WANT_ASSERTION_SIGNED NUMBER, WANTATNREQSIGNED NUMBER, MTS TIMESTAMP, PRIMARY KEY (DOMN, REALMN, NAME));
CREATE TABLE BEASAML2_IDP_AUDIENCEURI (DOMN VARCHAR2(128), REALMN VARCHAR2(128), PARTNER_NAME VARCHAR2(128), URI VARCHAR2(512));
CREATE TABLE BEASAML2_IDP_PT_EP (DOMN VARCHAR2(255), REALMN VARCHAR2(255), NAME VARCHAR2(255), SERVICE_TYPE VARCHAR2(128), BINDING_TYPE VARCHAR2(128), BINDING_LOCAL VARCHAR2(512));
CREATE TABLE BEASAML2_IDP_REDIRECTURI (DOMN VARCHAR2(128), REALMN VARCHAR2(128), PARTNER_NAME VARCHAR2(128), URI VARCHAR2(512));
CREATE TABLE BEASAML2_SPPARTNER (DOMN VARCHAR2(128) NOT NULL, REALMN VARCHAR2(128) NOT NULL, NAME VARCHAR2(128) NOT NULL, CTS TIMESTAMP, ARTPOSTFORM VARCHAR2(256), ARTUSEPOST NUMBER, C_PASSSWD VARCHAR2(256), C_PASSWDSET NUMBER, C_USERNAME VARCHAR2(128), CONFM_METHOD VARCHAR2(128), CP_COMPANY VARCHAR2(64), CP_EMAILADD VARCHAR2(64), CP_GIVENNAME VARCHAR2(64), CP_SURNAME VARCHAR2(64), CP_TELENUM VARCHAR2(64), CP_TYPE VARCHAR2(64), DESCRIPTION VARCHAR2(512), ENABLED NUMBER, ENTITYID VARCHAR2(512), ERROR_URL VARCHAR2(512), ISSUER_URI VARCHAR2(512), OG_NAME VARCHAR2(64), OG_URL VARCHAR2(512), PT_TYPE VARCHAR2(64), POSTPOSTFORM VARCHAR2(256), SIGNINGCERT BLOB, TPLAYER_CLIENTCERT BLOB, ARTREQSIGNED NUMBER, GENATTRS NUMBER, ONETIMEUSE NUMBER, KEYINFO_INC NUMBER, SP_NM_CLASSN VARCHAR2(128), TIME_TOLIVE NUMBER, TIME_TOLIVEOFFSET NUMBER, WANT_ASSERTION_SIGNED NUMBER, WANT_ANTREQSIGNED NUMBER, MTS TIMESTAMP, PRIMARY KEY (DOMN, REALMN, NAME));
CREATE TABLE BEASAML2_SP_AUDIENCEURI (DOMN VARCHAR2(128), REALMN VARCHAR2(128), PARTNER_NAME VARCHAR2(128), URI VARCHAR2(512));
CREATE TABLE BEASAML2_SP_PT_EP (DOMN VARCHAR2(255), REALMN VARCHAR2(255), NAME VARCHAR2(255), SERVICE_TYPE VARCHAR2(128), BINDING_TYPE VARCHAR2(128), BINDING_LOCAL VARCHAR2(512));
CREATE TABLE BEASAMLAP (DOMN VARCHAR2(128) NOT NULL, REALMN VARCHAR2(128) NOT NULL, REGN VARCHAR2(128) NOT NULL, CN VARCHAR2(2000) NOT NULL, CTS TIMESTAMP, SPD VARCHAR2(512), SPE VARCHAR2(16), SARU VARCHAR2(512), SASCA VARCHAR2(128), SAP VARCHAR2(128), SAU VARCHAR2(128), SGAE VARCHAR2(16), SITU VARCHAR2(512), SIU VARCHAR2(512), SNMC VARCHAR2(128), SPARSCE VARCHAR2(16), SP VARCHAR2(32), SPSCA VARCHAR2(128), SSA VARCHAR2(16), SSI VARCHAR2(512), STU VARCHAR2(512), SVUE VARCHAR2(16), MTS TIMESTAMP, PRIMARY KEY (DOMN, REALMN, REGN, CN));
CREATE TABLE BEASAMLAP_AURI (DOMN VARCHAR2(128), REALMN VARCHAR2(128), REGN VARCHAR2(128), CN VARCHAR2(2000), SAURI VARCHAR2(512));
CREATE TABLE BEASAMLAP_ITP (DOMN VARCHAR2(128), REALMN VARCHAR2(128), REGN VARCHAR2(128), CN VARCHAR2(2000), SITP VARCHAR2(512));
CREATE TABLE BEASAMLAP_RURI (DOMN VARCHAR2(128), REALMN VARCHAR2(128), REGN VARCHAR2(128), CN VARCHAR2(2000), SRURI VARCHAR2(512));
CREATE TABLE BEASAMLRP (DOMN VARCHAR2(128) NOT NULL, REALMN VARCHAR2(128) NOT NULL, REGN VARCHAR2(128) NOT NULL, CN VARCHAR2(2000) NOT NULL, CTS TIMESTAMP, SPD VARCHAR2(512), SPE VARCHAR2(16), SACU VARCHAR2(512), SAP VARCHAR2(128), SASCCA VARCHAR2(128), SAU VARCHAR2(128), SDNCC VARCHAR2(16), SGAE VARCHAR2(16), SKI VARCHAR2(16), SNMC VARCHAR2(128), SPF VARCHAR2(128), SP VARCHAR2(32), SSA VARCHAR2(16), STU VARCHAR2(512), STTL VARCHAR2(32), STTLO VARCHAR2(32), MTS TIMESTAMP, PRIMARY KEY (DOMN, REALMN, REGN, CN));
CREATE TABLE BEASAMLRP_ACP (DOMN VARCHAR2(128), REALMN VARCHAR2(128), REGN VARCHAR2(128), CN VARCHAR2(2000), SACP VARCHAR2(512));
CREATE TABLE BEASAMLRP_AU (DOMN VARCHAR2(128), REALMN VARCHAR2(128), REGN VARCHAR2(128), CN VARCHAR2(2000), SAU VARCHAR2(512));
CREATE TABLE BEAUPC (DOMN VARCHAR2(128) NOT NULL, REALMN VARCHAR2(128) NOT NULL, CREDN VARCHAR2(128) NOT NULL, CTS TIMESTAMP, PN VARCHAR2(128), PP BLOB, MTS TIMESTAMP, PRIMARY KEY (DOMN, REALMN, CREDN));
CREATE TABLE BEAWCMCI (DOMN VARCHAR2(128) NOT NULL, REALMN VARCHAR2(128) NOT NULL, WCN VARCHAR2(128) NOT NULL, CTS TIMESTAMP, WCT VARCHAR2(128), WCV VARCHAR2(128), WXF BLOB, MTS TIMESTAMP, PRIMARY KEY (DOMN, REALMN, WCN));
CREATE TABLE BEAWCRE (DOMN VARCHAR2(128) NOT NULL, REALMN VARCHAR2(128) NOT NULL, REGN VARCHAR2(128) NOT NULL, CN VARCHAR2(2000) NOT NULL, CTS TIMESTAMP, UC BLOB, WCRIDN VARCHAR2(2000), WCRSN VARCHAR2(2000), WCRSDN VARCHAR2(2000), WCRSKI VARCHAR2(2000), MTS TIMESTAMP, PRIMARY KEY (DOMN, REALMN, REGN, CN));
CREATE TABLE BEAWPCI (DOMN VARCHAR2(128) NOT NULL, REALMN VARCHAR2(128) NOT NULL, WCN VARCHAR2(128) NOT NULL, CTS TIMESTAMP, WCT VARCHAR2(128), WCV VARCHAR2(128), WXF BLOB, MTS TIMESTAMP, PRIMARY KEY (DOMN, REALMN, WCN));
CREATE TABLE BEAWRCI (DOMN VARCHAR2(128) NOT NULL, REALMN VARCHAR2(128) NOT NULL, WCN VARCHAR2(128) NOT NULL, CTS TIMESTAMP, WCT VARCHAR2(128), WCV VARCHAR2(128), WXF BLOB, MTS TIMESTAMP, PRIMARY KEY (DOMN, REALMN, WCN));
CREATE TABLE BEAXACMLAP (DOMN VARCHAR2(128) NOT NULL, REALMN VARCHAR2(128) NOT NULL, TYPEN VARCHAR2(32) NOT NULL, CN VARCHAR2(2000) NOT NULL, XVER VARCHAR2(10) NOT NULL, CTS TIMESTAMP, WCN VARCHAR2(128), WCI VARCHAR2(128), WXF BLOB, XD BLOB, XS VARCHAR2(10), MTS TIMESTAMP, PRIMARY KEY (DOMN, REALMN, TYPEN, CN, XVER));
CREATE TABLE BEAXACMLAP_RS (DOMN VARCHAR2(128), REALMN VARCHAR2(128), TYPEN VARCHAR2(32), CN VARCHAR2(2000), XVER VARCHAR2(10), XRS VARCHAR2(2000));
CREATE TABLE BEAXACMLRAP (DOMN VARCHAR2(128) NOT NULL, REALMN VARCHAR2(128) NOT NULL, TYPEN VARCHAR2(32) NOT NULL, CN VARCHAR2(2000) NOT NULL, XVER VARCHAR2(10) NOT NULL, CTS TIMESTAMP, WCN VARCHAR2(128), WCI VARCHAR2(128), WXF BLOB, XD BLOB, XS VARCHAR2(10), MTS TIMESTAMP, PRIMARY KEY (DOMN, REALMN, TYPEN, CN, XVER));
CREATE TABLE BEAXACMLRAP_R (DOMN VARCHAR2(128), REALMN VARCHAR2(128), TYPEN VARCHAR2(2000), CN VARCHAR2(2000), XVER VARCHAR2(10), XR VARCHAR2(2000));
CREATE TABLE BEAXACMLRAP_RS (DOMN VARCHAR2(128), REALMN VARCHAR2(128), TYPEN VARCHAR2(32), CN VARCHAR2(2000), XVER VARCHAR2(10), XRS VARCHAR2(2000));
INSERT INTO BEACSS_SCHEMA_VERSION VALUES (2);
COMMIT;