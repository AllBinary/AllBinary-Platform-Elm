module Org.Allbinary.Graphics.CellPosition exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Graph.V as V


jclass : String
jclass =
    "CellPosition"


jchain : List String
jchain =
    [ "CellPosition" ]
        ++ V.jchain


jfields : List ( String, JR.JValue )
jfields =
    V.jfields ++ [ ( "id", JR.defaultOf "I" ), ( "column", JR.defaultOf "I" ), ( "row", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getColumn_0", jm_getColumn_0 )
        , ( "getRow_0", jm_getRow_0 )
        , ( "toString_0", jm_toString_0 )
        , ( "toStringCellPosition_1", jm_toStringCellPosition_1 )
        , ( "toStringColRow_2", jm_toStringColRow_2 )
        , ( "getId_0", jm_getId_0 ) ]
        V.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CellPosition"
        [ ( "jm_getColumn_0", jm_getColumn_0 ), ( "jm_getRow_0", jm_getRow_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_toStringCellPosition_1", jm_toStringCellPosition_1 ), ( "jm_toStringColRow_2", jm_toStringColRow_2 ), ( "jm_getId_0", jm_getId_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "column", "I" ), ( "row", "I" ), ( "columns", "I" ), ( "rows", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect V.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "column" "I" JR.this (JR.local "column")), 
                    JR.exec (JR.setField "row" "I" JR.this (JR.local "row")), 
                    JR.exec (JR.setField "id" "I" JR.this (JR.map2 JR.add ((JR.map2 JR.mul (JR.local "row") (JR.local "columns"))) (JR.local "column"))) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_getColumn_0 : JR.Method
jm_getColumn_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "column") ])
        (jregister jheap)
        jthis
        jargs


jm_getRow_0 : JR.Method
jm_getRow_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "row") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic jm_toStringColRow_2 [ (JR.invoke "getColumn_0" JR.this []), (JR.invoke "getRow_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toStringCellPosition_1 : JR.Method
jm_toStringCellPosition_1 jheap jthis jargs =
    JR.method [ ( "basicGeographicMapCellPosition", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic jm_toStringColRow_2 [ (JR.invoke "getColumn_0" (JR.local "basicGeographicMapCellPosition") []), (JR.invoke "getRow_0" (JR.local "basicGeographicMapCellPosition") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toStringColRow_2 : JR.Method
jm_toStringColRow_2 jheap jthis jargs =
    JR.method [ ( "i_column", "I" ), ( "i_row", "I" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "PARENTHESIS_OPEN" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "i_column") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "i_row") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "PARENTHESIS_CLOSE" (JR.local "commonSeps")) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getId_0 : JR.Method
jm_getId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "id") ])
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

