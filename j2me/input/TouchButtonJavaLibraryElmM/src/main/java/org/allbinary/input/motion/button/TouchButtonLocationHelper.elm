module Org.Allbinary.Input.Motion.Button.TouchButtonLocationHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Input.Motion.Button.CommonButtons as CommonButtons
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "TouchButtonLocationHelper"


jchain : List String
jchain =
    [ "TouchButtonLocationHelper" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "totalColumns", JR.defaultOf "I" ), ( "totalRows", JR.defaultOf "I" ), ( "columnsRemainder", JR.defaultOf "I" ), ( "rowsRemainder", JR.defaultOf "I" ), ( "columnsRemainderHalf", JR.defaultOf "I" ), ( "rowsRemainderHalf", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getTotalColumns_0", jm_getTotalColumns_0 )
        , ( "getTotalRows_0", jm_getTotalRows_0 )
        , ( "getColumnsRemainder_0", jm_getColumnsRemainder_0 )
        , ( "getRowsRemainder_0", jm_getRowsRemainder_0 )
        , ( "getColumnsRemainderHalf_0", jm_getColumnsRemainderHalf_0 )
        , ( "getRowsRemainderHalf_0", jm_getRowsRemainderHalf_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchButtonLocationHelper"
        [ ( "jm_getTotalColumns_0", jm_getTotalColumns_0 ), ( "jm_getTotalRows_0", jm_getTotalRows_0 ), ( "jm_getColumnsRemainder_0", jm_getColumnsRemainder_0 ), ( "jm_getRowsRemainder_0", jm_getRowsRemainder_0 ), ( "jm_getColumnsRemainderHalf_0", jm_getColumnsRemainderHalf_0 ), ( "jm_getRowsRemainderHalf_0", jm_getRowsRemainderHalf_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.declare "buttonSize" "I" (JR.field "STANDARD_BUTTON_SIZE" (JR.callStatic CommonButtons.jm_getInstance_0 [])), 
                    JR.declare "displayInfo" "" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []), 
                    JR.exec (JR.setField "totalColumns" "I" JR.this (JR.math "round" [ (JR.map2 JR.div (JR.cast "F" (JR.invoke "getLastWidth_0" (JR.local "displayInfo") [])) (JR.cast "F" (JR.local "buttonSize"))) ])), 
                    JR.exec (JR.setField "totalRows" "I" JR.this (JR.math "round" [ (JR.map2 JR.div (JR.cast "F" (JR.invoke "getLastHeight_0" (JR.local "displayInfo") [])) (JR.cast "F" (JR.local "buttonSize"))) ])), 
                    JR.exec (JR.setField "columnsRemainder" "I" JR.this (JR.map2 JR.rem (JR.invoke "getLastWidth_0" (JR.local "displayInfo") []) (JR.local "buttonSize"))), 
                    JR.exec (JR.setField "columnsRemainderHalf" "I" JR.this ((JR.map2 JR.shr (JR.thisField "columnsRemainder") (JR.int 1)))), 
                    JR.exec (JR.setField "rowsRemainder" "I" JR.this (JR.map2 JR.rem (JR.invoke "getLastHeight_0" (JR.local "displayInfo") []) (JR.local "buttonSize"))), 
                    JR.exec (JR.setField "rowsRemainderHalf" "I" JR.this ((JR.map2 JR.shr (JR.thisField "rowsRemainder") (JR.int 1)))) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getTotalColumns_0 : JR.Method
jm_getTotalColumns_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "totalColumns") ])
        (jregister jheap)
        jthis
        jargs


jm_getTotalRows_0 : JR.Method
jm_getTotalRows_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "totalRows") ])
        (jregister jheap)
        jthis
        jargs


jm_getColumnsRemainder_0 : JR.Method
jm_getColumnsRemainder_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "columnsRemainder") ])
        (jregister jheap)
        jthis
        jargs


jm_getRowsRemainder_0 : JR.Method
jm_getRowsRemainder_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "rowsRemainder") ])
        (jregister jheap)
        jthis
        jargs


jm_getColumnsRemainderHalf_0 : JR.Method
jm_getColumnsRemainderHalf_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "columnsRemainderHalf") ])
        (jregister jheap)
        jthis
        jargs


jm_getRowsRemainderHalf_0 : JR.Method
jm_getRowsRemainderHalf_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "rowsRemainderHalf") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "totalColumns: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "totalColumns") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " totalRows: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "totalRows") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " columnsRemainder: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "columnsRemainder") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " rowsRemainder: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "rowsRemainder") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " columnsRemainderHalf: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "columnsRemainderHalf") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " rowsRemainderHalf: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "rowsRemainderHalf") ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

