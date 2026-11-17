module GenericOperatingSystem exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.os
-}

import JR
import CharacterSet
import CommonSeps
import OperatingSystemInterface
import StringMaker
import StringUtil
import StringValidationUtil
import SystemProperties


jclass : String
jclass =
    "GenericOperatingSystem"


jchain : List String
jchain =
    [ "GenericOperatingSystem" ]
        ++ OperatingSystemInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "osName", JR.defaultOf "" ), ( "osArch", JR.defaultOf "" ), ( "osVersion", JR.defaultOf "" ), ( "characterSet", JR.defaultOf "" ), ( "scalable", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "getName_0", jm_getName_0 )
        , ( "getVersion_0", jm_getVersion_0 )
        , ( "getArch_0", jm_getArch_0 )
        , ( "getCharacterSet_0", jm_getCharacterSet_0 )
        , ( "isOverScan_0", jm_isOverScan_0 )
        , ( "getOverScanXPercent_0", jm_getOverScanXPercent_0 )
        , ( "getOverScanYPercent_0", jm_getOverScanYPercent_0 )
        , ( "isScalable_0", jm_isScalable_0 )
        , ( "isAutoHide_0", jm_isAutoHide_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GenericOperatingSystem"
        [ ( "jm_getName_0", jm_getName_0 ), ( "jm_getVersion_0", jm_getVersion_0 ), ( "jm_getArch_0", jm_getArch_0 ), ( "jm_getCharacterSet_0", jm_getCharacterSet_0 ), ( "jm_isOverScan_0", jm_isOverScan_0 ), ( "jm_getOverScanXPercent_0", jm_getOverScanXPercent_0 ), ( "jm_getOverScanYPercent_0", jm_getOverScanYPercent_0 ), ( "jm_isScalable_0", jm_isScalable_0 ), ( "jm_isAutoHide_0", jm_isAutoHide_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "characterSet" "" JR.this (JR.new CharacterSet.jnew_0 [])),
                JR.exec (JR.setField "scalable" "Z" JR.this (JR.bool False)),
                identity,
                (JR.run [ 
                    JR.declare "systemProperties" "" (JR.callStatic SystemProperties.jm_getInstance_0 []), 
                    JR.declare "stringValidationUtil" "" (JR.callStatic StringValidationUtil.jm_getInstance_0 []), 
                    JR.declare "EMPTY_STRING" "" (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), 
                    JR.ifElse (JR.invoke "isEmpty_1" (JR.local "stringValidationUtil") [ (JR.invoke "getName_0" (JR.local "systemProperties") []) ]) (JR.run [ 
                        JR.exec (JR.setField "osName" "" JR.this (JR.local "EMPTY_STRING")) ]) (JR.run [ 
                        JR.exec (JR.setField "osName" "" JR.this (JR.invoke "getName_0" (JR.local "systemProperties") [])) ]), 
                    JR.ifElse (JR.invoke "isEmpty_1" (JR.local "stringValidationUtil") [ (JR.invoke "getArch_0" (JR.local "systemProperties") []) ]) (JR.run [ 
                        JR.exec (JR.setField "osArch" "" JR.this (JR.local "EMPTY_STRING")) ]) (JR.run [ 
                        JR.exec (JR.setField "osArch" "" JR.this (JR.invoke "getArch_0" (JR.local "systemProperties") [])) ]), 
                    JR.ifElse (JR.invoke "isEmpty_1" (JR.local "stringValidationUtil") [ (JR.invoke "getVersion_0" (JR.local "systemProperties") []) ]) (JR.run [ 
                        JR.exec (JR.setField "osVersion" "" JR.this (JR.local "EMPTY_STRING")) ]) (JR.run [ 
                        JR.exec (JR.setField "osVersion" "" JR.this (JR.invoke "getVersion_0" (JR.local "systemProperties") [])) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "osName") ])
        (jregister jheap)
        jthis
        jargs


jm_getVersion_0 : JR.Method
jm_getVersion_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "osVersion") ])
        (jregister jheap)
        jthis
        jargs


jm_getArch_0 : JR.Method
jm_getArch_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "osArch") ])
        (jregister jheap)
        jthis
        jargs


jm_getCharacterSet_0 : JR.Method
jm_getCharacterSet_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "characterSet") ])
        (jregister jheap)
        jthis
        jargs


jm_isOverScan_0 : JR.Method
jm_isOverScan_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_getOverScanXPercent_0 : JR.Method
jm_getOverScanXPercent_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 100) ])
        (jregister jheap)
        jthis
        jargs


jm_getOverScanYPercent_0 : JR.Method
jm_getOverScanYPercent_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 100) ])
        (jregister jheap)
        jthis
        jargs


jm_isScalable_0 : JR.Method
jm_isScalable_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "scalable") ])
        (jregister jheap)
        jthis
        jargs


jm_isAutoHide_0 : JR.Method
jm_isAutoHide_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "NEW_LINE" "" (JR.field "NEW_LINE" (JR.callStatic CommonSeps.jm_getInstance_0 [])), 
                    JR.declare "osBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "osBuffer") [ (JR.str "Operating System Info: \n") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "osBuffer") [ (JR.invoke "getName_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "osBuffer") [ (JR.local "NEW_LINE") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "osBuffer") [ (JR.invoke "getArch_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "osBuffer") [ (JR.local "NEW_LINE") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "osBuffer") [ (JR.invoke "getVersion_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "osBuffer") [ (JR.local "NEW_LINE") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "osBuffer") [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.invoke "getCharacterSet_0" JR.this []) ]) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "osBuffer") [ (JR.local "NEW_LINE") ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "osBuffer") []) ])
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

