module Org.Allbinary.Graphics.CellPositionFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics
-}

import JR
import Org.Allbinary.Graphics.CellPosition as CellPosition
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "CellPositionFactory"


jchain : List String
jchain =
    [ "CellPositionFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "NONE", JR.defaultOf "" ), ( "cellPositionArray", JR.defaultOf "" ), ( "columns", JR.defaultOf "I" ), ( "rows", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_2", jm_init_2 )
        , ( "getInstanceColRow_2", jm_getInstanceColRow_2 )
        , ( "createInstance_2", jm_createInstance_2 )
        , ( "getColumns_0", jm_getColumns_0 )
        , ( "getRows_0", jm_getRows_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CellPositionFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_2", jm_init_2 ), ( "jm_getInstanceColRow_2", jm_getInstanceColRow_2 ), ( "jm_createInstance_2", jm_createInstance_2 ), ( "jm_getColumns_0", jm_getColumns_0 ), ( "jm_getRows_0", jm_getRows_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "CellPositionFactory" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "NONE" "" JR.this (JR.new CellPosition.jnew_4 [ (JR.map JR.neg (JR.int 1)), (JR.map JR.neg (JR.int 1)), (JR.map JR.neg (JR.int 1)), (JR.map JR.neg (JR.int 1)) ])),
                JR.exec (JR.setField "cellPositionArray" "" JR.this (JR.newArray "" [ (JR.int 0), (JR.int 0) ])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "columns", "I" ), ( "rows", "I" ) ] ""
        (JR.run [ 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Init: columns: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "columns") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " rows: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "rows") ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.field "INIT" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.setField "cellPositionArray" "" JR.this (JR.newArray "" [ (JR.local "columns"), (JR.local "rows") ])), 
                    JR.exec (JR.setField "columns" "I" JR.this (JR.local "columns")), 
                    JR.exec (JR.setField "rows" "I" JR.this (JR.local "rows")), 
                    JR.run [ JR.declare "column" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "column") (JR.local "columns")) (JR.run [ JR.exec (JR.postUpdate (JR.local "column") (\jwN67330 -> (JR.setLocal "column" "I" (JR.lit jwN67330))) JR.increment) ]) (JR.run [ 
                        JR.run [ JR.declare "row" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "row") (JR.local "rows")) (JR.run [ JR.exec (JR.postUpdate (JR.local "row") (\jwN67264 -> (JR.setLocal "row" "I" (JR.lit jwN67264))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.invoke "createInstance_2" JR.this [ (JR.local "column"), (JR.local "row") ]) ]) ] ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceColRow_2 : JR.Method
jm_getInstanceColRow_2 jheap jthis jargs =
    JR.method [ ( "i_column", "I" ), ( "i_row", "I" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.return (JR.aget (JR.aget (JR.thisField "cellPositionArray") (JR.local "i_column")) (JR.local "i_row")) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "columns: ") ]) [ (JR.invoke "getColumns_0" JR.this []) ]) [ (JR.str " rows: ") ]) [ (JR.invoke "getRows_0" JR.this []) ]) [ (JR.str " col: ") ]) [ (JR.local "i_column") ]) [ (JR.str " row: ") ]) [ (JR.local "i_row") ]) []), JR.this, (JR.field "GET_INSTANCE" (JR.local "commonStrings")), (JR.local "e") ]), 
                        JR.return (JR.thisField "NONE") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_createInstance_2 : JR.Method
jm_createInstance_2 jheap jthis jargs =
    JR.method [ ( "i_column", "I" ), ( "i_row", "I" ) ] ""
        (JR.run [ 
                    JR.declare "cellPositionCanBeNull" "" (JR.aget (JR.aget (JR.thisField "cellPositionArray") (JR.local "i_column")) (JR.local "i_row")), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "cellPositionCanBeNull") JR.null) (JR.run [ 
                        JR.exec (JR.setLocal "cellPositionCanBeNull" "" (JR.new CellPosition.jnew_4 [ (JR.local "i_column"), (JR.local "i_row"), (JR.thisField "columns"), (JR.thisField "rows") ])), 
                        JR.exec (JR.andThen (JR.aget (JR.thisField "cellPositionArray") (JR.local "i_column")) (\jaN67978 -> JR.andThen (JR.local "i_row") (\jiN67978 -> (JR.aset (JR.lit jaN67978) (JR.lit jiN67978) (JR.local "cellPositionCanBeNull"))))) ]) identity, 
                    JR.return (JR.local "cellPositionCanBeNull") ])
        (jregister jheap)
        jthis
        jargs


jm_getColumns_0 : JR.Method
jm_getColumns_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "columns") ])
        (jregister jheap)
        jthis
        jargs


jm_getRows_0 : JR.Method
jm_getRows_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "rows") ])
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

