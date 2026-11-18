module Org.Allbinary.Business.Context.Modules.Storefronts.BasicStoreFront exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.context.modules.storefronts
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Business.Context.Modules.Storefronts.BasicStoreFrontInterface as BasicStoreFrontInterface
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Business.Entry.EntryData as EntryData
import Org.Allbinary.Business.Context.Modules.Storefront.StoreFrontData as StoreFrontData
import Org.Allbinary.Logic.String.Tokens.Tokenizer as Tokenizer
import Org.Allbinary.Globals.URLGLOBALS as URLGLOBALS
import Org.Allbinary.Business.User.UserData as UserData


jclass : String
jclass =
    "BasicStoreFront"


jchain : List String
jchain =
    [ "BasicStoreFront" ]
        ++ BasicStoreFrontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "name", JR.defaultOf "" ), ( "userName", JR.defaultOf "" ), ( "basketName", JR.defaultOf "" ), ( "homeHostName", JR.defaultOf "" ), ( "homeHostNamePath", JR.defaultOf "" ), ( "hostName", JR.defaultOf "" ), ( "hostNamePath", JR.defaultOf "" ), ( "testHomeHostName", JR.defaultOf "" ), ( "testHomeHostNamePath", JR.defaultOf "" ), ( "testHostName", JR.defaultOf "" ), ( "testHostNamePath", JR.defaultOf "" ), ( "imagePath", JR.defaultOf "" ), ( "staticPath", JR.defaultOf "" ), ( "categoryPath", JR.defaultOf "" ), ( "inventoryControl", JR.defaultOf "" ), ( "subStores", JR.defaultOf "" ), ( "tagLocation", JR.defaultOf "" ), ( "packageLocation", JR.defaultOf "" ), ( "ftp", JR.defaultOf "" ), ( "ftpPath", JR.defaultOf "" ), ( "ftpUserName", JR.defaultOf "" ), ( "ftpPassword", JR.defaultOf "" ), ( "testFtp", JR.defaultOf "" ), ( "testFtpPath", JR.defaultOf "" ), ( "testFtpUserName", JR.defaultOf "" ), ( "testFtpPassword", JR.defaultOf "" ), ( "timeCreated", JR.defaultOf "" ), ( "lastModified", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getTestHtmlPath_0", jm_getTestHtmlPath_0 )
        , ( "getCurrentHostName_0", jm_getCurrentHostName_0 )
        , ( "getCurrentHostNamePath_0", jm_getCurrentHostNamePath_0 )
        , ( "getCurrentHomeHostName_0", jm_getCurrentHomeHostName_0 )
        , ( "getCurrentHomeHostNamePath_0", jm_getCurrentHomeHostNamePath_0 )
        , ( "getName_0", jm_getName_0 )
        , ( "getUserName_0", jm_getUserName_0 )
        , ( "getBasketName_0", jm_getBasketName_0 )
        , ( "getHomeHostName_0", jm_getHomeHostName_0 )
        , ( "getHomeHostNamePath_0", jm_getHomeHostNamePath_0 )
        , ( "getHostName_0", jm_getHostName_0 )
        , ( "getHostNamePath_0", jm_getHostNamePath_0 )
        , ( "getTestHomeHostName_0", jm_getTestHomeHostName_0 )
        , ( "getTestHomeHostNamePath_0", jm_getTestHomeHostNamePath_0 )
        , ( "getTestHostName_0", jm_getTestHostName_0 )
        , ( "getTestHostNamePath_0", jm_getTestHostNamePath_0 )
        , ( "getStaticPath_0", jm_getStaticPath_0 )
        , ( "getCategoryPath_0", jm_getCategoryPath_0 )
        , ( "getInventoryControl_0", jm_getInventoryControl_0 )
        , ( "getSubStores_0", jm_getSubStores_0 )
        , ( "getTagLocation_0", jm_getTagLocation_0 )
        , ( "getPackageLocation_0", jm_getPackageLocation_0 )
        , ( "getFtp_0", jm_getFtp_0 )
        , ( "getFtpUserName_0", jm_getFtpUserName_0 )
        , ( "getFtpPassword_0", jm_getFtpPassword_0 )
        , ( "getTestFtp_0", jm_getTestFtp_0 )
        , ( "getTestFtpUserName_0", jm_getTestFtpUserName_0 )
        , ( "getTestFtpPassword_0", jm_getTestFtpPassword_0 )
        , ( "getFtpPath_0", jm_getFtpPath_0 )
        , ( "getTestFtpPath_0", jm_getTestFtpPath_0 )
        , ( "getTimeCreated_0", jm_getTimeCreated_0 )
        , ( "getLastModified_0", jm_getLastModified_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicStoreFront"
        [ ( "jm_getTestHtmlPath_0", jm_getTestHtmlPath_0 ), ( "jm_getCurrentHostName_0", jm_getCurrentHostName_0 ), ( "jm_getCurrentHostNamePath_0", jm_getCurrentHostNamePath_0 ), ( "jm_getCurrentHomeHostName_0", jm_getCurrentHomeHostName_0 ), ( "jm_getCurrentHomeHostNamePath_0", jm_getCurrentHomeHostNamePath_0 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_getUserName_0", jm_getUserName_0 ), ( "jm_getBasketName_0", jm_getBasketName_0 ), ( "jm_getHomeHostName_0", jm_getHomeHostName_0 ), ( "jm_getHomeHostNamePath_0", jm_getHomeHostNamePath_0 ), ( "jm_getHostName_0", jm_getHostName_0 ), ( "jm_getHostNamePath_0", jm_getHostNamePath_0 ), ( "jm_getTestHomeHostName_0", jm_getTestHomeHostName_0 ), ( "jm_getTestHomeHostNamePath_0", jm_getTestHomeHostNamePath_0 ), ( "jm_getTestHostName_0", jm_getTestHostName_0 ), ( "jm_getTestHostNamePath_0", jm_getTestHostNamePath_0 ), ( "jm_getStaticPath_0", jm_getStaticPath_0 ), ( "jm_getCategoryPath_0", jm_getCategoryPath_0 ), ( "jm_getInventoryControl_0", jm_getInventoryControl_0 ), ( "jm_getSubStores_0", jm_getSubStores_0 ), ( "jm_getTagLocation_0", jm_getTagLocation_0 ), ( "jm_getPackageLocation_0", jm_getPackageLocation_0 ), ( "jm_getFtp_0", jm_getFtp_0 ), ( "jm_getFtpUserName_0", jm_getFtpUserName_0 ), ( "jm_getFtpPassword_0", jm_getFtpPassword_0 ), ( "jm_getTestFtp_0", jm_getTestFtp_0 ), ( "jm_getTestFtpUserName_0", jm_getTestFtpUserName_0 ), ( "jm_getTestFtpPassword_0", jm_getTestFtpPassword_0 ), ( "jm_getFtpPath_0", jm_getFtpPath_0 ), ( "jm_getTestFtpPath_0", jm_getTestFtpPath_0 ), ( "jm_getTimeCreated_0", jm_getTimeCreated_0 ), ( "jm_getLastModified_0", jm_getLastModified_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "storeHashMap", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.declare "storeFrontData" "" (JR.callStatic StoreFrontData.jm_getInstance_0 []), 
                    JR.exec (JR.setField "name" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "NAME" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "userName" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ UserData.jstatic_USERNAME ])), 
                    JR.exec (JR.setField "basketName" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "NAME" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "homeHostName" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "HOMEHOSTNAME" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "homeHostNamePath" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "HOMEHOSTNAMEPATH" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "hostName" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "HOSTNAME" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "hostNamePath" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "HOSTNAMEPATH" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "testHomeHostName" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "TESTHOMEHOSTNAME" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "testHomeHostNamePath" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "TESTHOMEHOSTNAMEPATH" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "testHostName" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "TESTHOSTNAME" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "testHostNamePath" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "TESTHOSTNAMEPATH" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "imagePath" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "IMAGEPATH" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "staticPath" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "STATICPATH" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "categoryPath" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "CATEGORYPATH" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "inventoryControl" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "INVENTORYCONTROL" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "subStores" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "SUBSTORES" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "tagLocation" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "TAGLOCATION" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "packageLocation" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "PACKAGELOCATION" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "ftp" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "FTP" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "ftpPath" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "FTPPATH" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "ftpUserName" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "FTPUSERNAME" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "ftpPassword" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "FTPPASSWORD" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "testFtp" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "TESTFTP" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "testFtpPath" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "TESTFTPPATH" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "testFtpUserName" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "TESTFTPUSERNAME" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "testFtpPassword" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "TESTFTPPASSWORD" (JR.local "storeFrontData")) ])), 
                    JR.exec (JR.setField "timeCreated" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "TIMECREATED" (JR.callStatic EntryData.jm_getInstance_0 [])) ])), 
                    JR.exec (JR.setField "lastModified" "" JR.this (JR.invoke "get_1" (JR.local "storeHashMap") [ (JR.field "LASTMODIFIED" (JR.callStatic EntryData.jm_getInstance_0 [])) ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getTestHtmlPath_0 : JR.Method
jm_getTestHtmlPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.plus (JR.callStatic URLGLOBALS.jm_getTestHtmlPath_0 []) (JR.invoke "getCurrentHostNamePath_0" JR.this [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getCurrentHostName_0 : JR.Method
jm_getCurrentHostName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "location" "" JR.null, 
                    JR.ifElse (JR.callStatic URLGLOBALS.jm_isTestingMode_0 []) (JR.run [ 
                        JR.exec (JR.setLocal "location" "" (JR.invoke "getTestHostName_0" JR.this [])) ]) (JR.run [ 
                        JR.exec (JR.setLocal "location" "" (JR.invoke "getHostName_0" JR.this [])) ]), 
                    JR.return (JR.local "location") ])
        (jregister jheap)
        jthis
        jargs


jm_getCurrentHostNamePath_0 : JR.Method
jm_getCurrentHostNamePath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "location" "" JR.null, 
                    JR.ifElse (JR.callStatic URLGLOBALS.jm_isTestingMode_0 []) (JR.run [ 
                        JR.exec (JR.setLocal "location" "" (JR.invoke "getTestHostNamePath_0" JR.this [])) ]) (JR.run [ 
                        JR.exec (JR.setLocal "location" "" (JR.invoke "getHostNamePath_0" JR.this [])) ]), 
                    JR.return (JR.local "location") ])
        (jregister jheap)
        jthis
        jargs


jm_getCurrentHomeHostName_0 : JR.Method
jm_getCurrentHomeHostName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "location" "" JR.null, 
                    JR.ifElse (JR.callStatic URLGLOBALS.jm_isTestingMode_0 []) (JR.run [ 
                        JR.exec (JR.setLocal "location" "" (JR.invoke "getTestHomeHostName_0" JR.this [])) ]) (JR.run [ 
                        JR.exec (JR.setLocal "location" "" (JR.invoke "getHomeHostName_0" JR.this [])) ]), 
                    JR.return (JR.local "location") ])
        (jregister jheap)
        jthis
        jargs


jm_getCurrentHomeHostNamePath_0 : JR.Method
jm_getCurrentHomeHostNamePath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "location" "" JR.null, 
                    JR.ifElse (JR.callStatic URLGLOBALS.jm_isTestingMode_0 []) (JR.run [ 
                        JR.exec (JR.setLocal "location" "" (JR.invoke "getTestHomeHostNamePath_0" JR.this [])) ]) (JR.run [ 
                        JR.exec (JR.setLocal "location" "" (JR.invoke "getHomeHostNamePath_0" JR.this [])) ]), 
                    JR.return (JR.local "location") ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_getUserName_0 : JR.Method
jm_getUserName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "userName") ])
        (jregister jheap)
        jthis
        jargs


jm_getBasketName_0 : JR.Method
jm_getBasketName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "basketName") ])
        (jregister jheap)
        jthis
        jargs


jm_getHomeHostName_0 : JR.Method
jm_getHomeHostName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "homeHostName") ])
        (jregister jheap)
        jthis
        jargs


jm_getHomeHostNamePath_0 : JR.Method
jm_getHomeHostNamePath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "homeHostNamePath") ])
        (jregister jheap)
        jthis
        jargs


jm_getHostName_0 : JR.Method
jm_getHostName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "hostName") ])
        (jregister jheap)
        jthis
        jargs


jm_getHostNamePath_0 : JR.Method
jm_getHostNamePath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "hostNamePath") ])
        (jregister jheap)
        jthis
        jargs


jm_getTestHomeHostName_0 : JR.Method
jm_getTestHomeHostName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "testHomeHostName") ])
        (jregister jheap)
        jthis
        jargs


jm_getTestHomeHostNamePath_0 : JR.Method
jm_getTestHomeHostNamePath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "testHomeHostNamePath") ])
        (jregister jheap)
        jthis
        jargs


jm_getTestHostName_0 : JR.Method
jm_getTestHostName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "testHostName") ])
        (jregister jheap)
        jthis
        jargs


jm_getTestHostNamePath_0 : JR.Method
jm_getTestHostNamePath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "testHostNamePath") ])
        (jregister jheap)
        jthis
        jargs


jm_getStaticPath_0 : JR.Method
jm_getStaticPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "staticPath") ])
        (jregister jheap)
        jthis
        jargs


jm_getCategoryPath_0 : JR.Method
jm_getCategoryPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "categoryPath") ])
        (jregister jheap)
        jthis
        jargs


jm_getInventoryControl_0 : JR.Method
jm_getInventoryControl_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "inventoryControl") ])
        (jregister jheap)
        jthis
        jargs


jm_getSubStores_0 : JR.Method
jm_getSubStores_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "tokenizer" "" (JR.new Tokenizer.jnew_1 [ (JR.field "SEMICOLON" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                        JR.declare "subStoreVector" "" (JR.invoke "getTokensFromString_2" (JR.local "tokenizer") [ (JR.thisField "subStores"), (JR.new BasicArrayListD.jnew_0 []) ]), 
                        JR.return (JR.local "subStoreVector") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getTagLocation_0 : JR.Method
jm_getTagLocation_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "tagLocation") ])
        (jregister jheap)
        jthis
        jargs


jm_getPackageLocation_0 : JR.Method
jm_getPackageLocation_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "packageLocation") ])
        (jregister jheap)
        jthis
        jargs


jm_getFtp_0 : JR.Method
jm_getFtp_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "ftp") ])
        (jregister jheap)
        jthis
        jargs


jm_getFtpUserName_0 : JR.Method
jm_getFtpUserName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "ftpUserName") ])
        (jregister jheap)
        jthis
        jargs


jm_getFtpPassword_0 : JR.Method
jm_getFtpPassword_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "ftpPassword") ])
        (jregister jheap)
        jthis
        jargs


jm_getTestFtp_0 : JR.Method
jm_getTestFtp_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "testFtp") ])
        (jregister jheap)
        jthis
        jargs


jm_getTestFtpUserName_0 : JR.Method
jm_getTestFtpUserName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "testFtpUserName") ])
        (jregister jheap)
        jthis
        jargs


jm_getTestFtpPassword_0 : JR.Method
jm_getTestFtpPassword_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "testFtpPassword") ])
        (jregister jheap)
        jthis
        jargs


jm_getFtpPath_0 : JR.Method
jm_getFtpPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "ftpPath") ])
        (jregister jheap)
        jthis
        jargs


jm_getTestFtpPath_0 : JR.Method
jm_getTestFtpPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "testFtpPath") ])
        (jregister jheap)
        jthis
        jargs


jm_getTimeCreated_0 : JR.Method
jm_getTimeCreated_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "timeCreated") ])
        (jregister jheap)
        jthis
        jargs


jm_getLastModified_0 : JR.Method
jm_getLastModified_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "lastModified") ])
        (jregister jheap)
        jthis
        jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

