module Org.Allbinary.Logic.System.Security.Licensing.AbeClientLicense exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing
-}

import JR
import Org.Allbinary.Logic.System.Security.Licensing.AbeClientInformationData as AbeClientInformationData
import Org.Allbinary.Logic.System.Security.Licensing.AbeLicenseInterface as AbeLicenseInterface
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Logic.System.Security.Licensing.LicenseTypeFactory as LicenseTypeFactory
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Logic.String.StringValidationUtil as StringValidationUtil


jclass : String
jclass =
    "AbeClientLicense"


jchain : List String
jchain =
    [ "AbeClientLicense" ]
        ++ AbeLicenseInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "hashtable", JR.defaultOf "" ), ( "id", JR.defaultOf "" ), ( "servers", JR.defaultOf "" ), ( "special", JR.defaultOf "" ), ( "licenseType", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "hasRequiredKeys_1", jm_hasRequiredKeys_1 )
        , ( "hasKey_0", jm_hasKey_0 )
        , ( "getKey_1", jm_getKey_1 )
        , ( "getLicenseId_0", jm_getLicenseId_0 )
        , ( "getServers_0", jm_getServers_0 )
        , ( "isValid_0", jm_isValid_0 )
        , ( "toString_0", jm_toString_0 )
        , ( "setSpecial_1", jm_setSpecial_1 )
        , ( "getSpecial_0", jm_getSpecial_0 )
        , ( "getLicenseType_0", jm_getLicenseType_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbeClientLicense"
        [ ( "jm_hasRequiredKeys_1", jm_hasRequiredKeys_1 ), ( "jm_hasKey_0", jm_hasKey_0 ), ( "jm_getKey_1", jm_getKey_1 ), ( "jm_getLicenseId_0", jm_getLicenseId_0 ), ( "jm_getServers_0", jm_getServers_0 ), ( "jm_isValid_0", jm_isValid_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_setSpecial_1", jm_setSpecial_1 ), ( "jm_getSpecial_0", jm_getSpecial_0 ), ( "jm_getLicenseType_0", jm_getLicenseType_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "hashtable" "" JR.this (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])), 
                    JR.declare "abeClientInformationData" "" (JR.callStatic AbeClientInformationData.jm_getInstance_0 []), 
                    JR.declare "keyValue" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.field "KEY" (JR.local "abeClientInformationData")) ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "keyValue") JR.null) (JR.run [ 
                        JR.ifElse (JR.instanceOf "String" (JR.local "keyValue")) (JR.run [ 
                            JR.exec (JR.invoke "put_2" (JR.thisField "hashtable") [ (JR.field "KEY" (JR.local "abeClientInformationData")), (JR.local "keyValue") ]) ]) identity ]) identity, 
                    JR.exec (JR.setField "id" "" JR.this (JR.invoke "get_1" (JR.local "hashtable") [ (JR.field "LICENSEID" (JR.local "abeClientInformationData")) ])), 
                    JR.declare "vector" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.field "LICENSESERVERS" (JR.local "abeClientInformationData")) ]), 
                    JR.exec (JR.setField "servers" "" JR.this (JR.new BasicArrayListD.jnew_0 [])), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "vector") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67636 -> (JR.setLocal "index" "I" (JR.lit jwN67636))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "servers") [ (JR.invoke "get_1" (JR.local "vector") [ (JR.local "index") ]) ]) ]) ], 
                    JR.declare "stringUtil" "" (JR.callStatic StringUtil.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "setSpecial_1" JR.this [ (JR.invoke "getNonNull_1" (JR.local "stringUtil") [ (JR.invoke "get_1" (JR.local "hashtable") [ (JR.field "SPECIAL" (JR.local "abeClientInformationData")) ]) ]) ]), 
                    JR.declare "licenseTypeString" "" (JR.invoke "getNonNull_1" (JR.local "stringUtil") [ (JR.invoke "get_1" (JR.local "hashtable") [ (JR.field "LICENSE_TYPE" (JR.local "abeClientInformationData")) ]) ]), 
                    JR.exec (JR.setField "licenseType" "" JR.this (JR.invoke "getInstance_1" (JR.callStatic LicenseTypeFactory.jm_getInstance_0 []) [ (JR.local "licenseTypeString") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_hasRequiredKeys_1 : JR.Method
jm_hasRequiredKeys_1 jheap jthis jargs =
    JR.method [ ( "resultHashtable", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "abeClientInformationData" "" (JR.callStatic AbeClientInformationData.jm_getInstance_0 []), 
                    JR.ifElse (JR.and (JR.and (JR.and (JR.invoke "containsKey_1" (JR.local "resultHashtable") [ (JR.field "LICENSEID" (JR.local "abeClientInformationData")) ]) (JR.invoke "containsKey_1" (JR.local "resultHashtable") [ (JR.field "LICENSESERVERS" (JR.local "abeClientInformationData")) ])) (JR.invoke "containsKey_1" (JR.local "resultHashtable") [ (JR.field "KEY" (JR.local "abeClientInformationData")) ])) (JR.invoke "containsKey_1" (JR.local "resultHashtable") [ (JR.field "LICENSE_TYPE" (JR.local "abeClientInformationData")) ])) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_hasKey_0 : JR.Method
jm_hasKey_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isValid_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getKey_1 : JR.Method
jm_getKey_1 jheap jthis jargs =
    JR.method [ ( "keyName", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "get_1" (JR.thisField "hashtable") [ (JR.local "keyName") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getLicenseId_0 : JR.Method
jm_getLicenseId_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "id") ])
        (jregister jheap)
        jthis
        jargs


jm_getServers_0 : JR.Method
jm_getServers_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "servers") ])
        (jregister jheap)
        jthis
        jargs


jm_isValid_0 : JR.Method
jm_isValid_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.declare "stringValidationUtil" "" (JR.callStatic StringValidationUtil.jm_getInstance_0 []), 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isEmpty_1" (JR.local "stringValidationUtil") [ (JR.invoke "getKey_1" JR.this [ (JR.field "KEY" (JR.callStatic AbeClientInformationData.jm_getInstance_0 [])) ]) ])) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "BREAK" "" (JR.str "<br/>"), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "License Id: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getLicenseId_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "BREAK") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Is Valid: ") ]), 
                    JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isValid_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "BREAK") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Keys: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.thisField "hashtable") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "BREAK") ]), 
                    JR.declare "serverVector" "" (JR.invoke "getServers_0" JR.this []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "serverVector") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69354 -> (JR.setLocal "index" "I" (JR.lit jwN69354))) JR.increment) ]) (JR.run [ 
                        JR.declare "nextServerString" "" (JR.invoke "get_1" (JR.local "serverVector") [ (JR.local "index") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Server: ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "nextServerString") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "BREAK") ]) ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_setSpecial_1 : JR.Method
jm_setSpecial_1 jheap jthis jargs =
    JR.method [ ( "special", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "special" "" JR.this (JR.local "special")) ])
        (jregister jheap)
        jthis
        jargs


jm_getSpecial_0 : JR.Method
jm_getSpecial_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "special") ])
        (jregister jheap)
        jthis
        jargs


jm_getLicenseType_0 : JR.Method
jm_getLicenseType_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "licenseType") ])
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

