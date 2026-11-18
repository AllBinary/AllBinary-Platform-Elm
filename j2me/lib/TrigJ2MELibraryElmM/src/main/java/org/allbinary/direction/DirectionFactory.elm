module Org.Allbinary.Direction.DirectionFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.direction
-}

import JR
import Org.Allbinary.String.CommonPhoneStrings as CommonPhoneStrings
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Direction.Direction as Direction
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "DirectionFactory"


jchain : List String
jchain =
    [ "DirectionFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NAME", JR.defaultOf "" ), ( "LEFT", JR.defaultOf "" ), ( "RIGHT", JR.defaultOf "" ), ( "DOWN", JR.defaultOf "" ), ( "UP", JR.defaultOf "" ), ( "UP_LEFT", JR.defaultOf "" ), ( "UP_RIGHT", JR.defaultOf "" ), ( "DOWN_LEFT", JR.defaultOf "" ), ( "DOWN_RIGHT", JR.defaultOf "" ), ( "NOT_BORDERED_WITH", JR.defaultOf "" ), ( "NO_DIRECTION", JR.defaultOf "" ), ( "TOP", JR.defaultOf "" ), ( "BOTTOM", JR.defaultOf "" ), ( "ALL_DIRECTION", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DirectionFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "DirectionFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NAME" "" JR.this (JR.str "DIRECTION")),
                JR.exec (JR.setField "LEFT" "" JR.this (JR.new Direction.jnew_4 [ (JR.field "LEFT" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])), (JR.str "WEST"), (JR.int 0), (JR.int 1) ])),
                JR.exec (JR.setField "RIGHT" "" JR.this (JR.new Direction.jnew_4 [ (JR.field "RIGHT" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])), (JR.str "EAST"), (JR.int 1), (JR.int 0) ])),
                JR.exec (JR.setField "DOWN" "" JR.this (JR.new Direction.jnew_4 [ (JR.field "DOWN" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])), (JR.str "SOUTH"), (JR.int 2), (JR.int 0) ])),
                JR.exec (JR.setField "UP" "" JR.this (JR.new Direction.jnew_4 [ (JR.field "UP" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 [])), (JR.str "NORTH"), (JR.int 3), (JR.int 0) ])),
                JR.exec (JR.setField "NOT_BORDERED_WITH" "" JR.this (JR.new Direction.jnew_4 [ (JR.str "NOT_BORDERED_WITH"), (JR.str "NOT_BORDERED_WITH"), (JR.int 8), (JR.int 0) ])),
                JR.exec (JR.setField "NO_DIRECTION" "" JR.this (JR.new Direction.jnew_4 [ (JR.str "NO_DIRECTION"), (JR.str "NO_DIRECTION"), (JR.int 9), (JR.int 0) ])),
                JR.exec (JR.setField "TOP" "" JR.this (JR.new Direction.jnew_4 [ (JR.str "TOP"), (JR.str "TOP"), (JR.int 10), (JR.int 0) ])),
                JR.exec (JR.setField "BOTTOM" "" JR.this (JR.new Direction.jnew_4 [ (JR.str "BOTTOM"), (JR.str "BOTTOM"), (JR.int 11), (JR.int 0) ])),
                JR.exec (JR.setField "ALL_DIRECTION" "" JR.this (JR.new Direction.jnew_4 [ (JR.str "ALL_DIRECTION"), (JR.str "ALL_DIRECTION"), (JR.int 12), (JR.int 0) ])),
                identity,
                (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.exec (JR.setField "UP_LEFT" "" JR.this (JR.new Direction.jnew_4 [ (JR.str "UP LEFT"), (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getOtherName_0" (JR.thisField "UP") []) ]) [ (JR.field "SPACE" (JR.local "commonSeps")) ]) [ (JR.invoke "getOtherName_0" (JR.thisField "LEFT") []) ]) []), (JR.int 4), (JR.int 0) ])), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                    JR.exec (JR.setField "UP_RIGHT" "" JR.this (JR.new Direction.jnew_4 [ (JR.str "UP RIGHT"), (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getOtherName_0" (JR.thisField "UP") []) ]) [ (JR.field "SPACE" (JR.local "commonSeps")) ]) [ (JR.invoke "getOtherName_0" (JR.thisField "RIGHT") []) ]) []), (JR.int 5), (JR.int 0) ])), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                    JR.exec (JR.setField "DOWN_LEFT" "" JR.this (JR.new Direction.jnew_4 [ (JR.str "DOWN LEFT"), (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getOtherName_0" (JR.thisField "DOWN") []) ]) [ (JR.field "SPACE" (JR.local "commonSeps")) ]) [ (JR.invoke "getOtherName_0" (JR.thisField "LEFT") []) ]) []), (JR.int 6), (JR.int 0) ])), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                    JR.exec (JR.setField "DOWN_RIGHT" "" JR.this (JR.new Direction.jnew_4 [ (JR.str "DOWN RIGHT"), (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getOtherName_0" (JR.thisField "DOWN") []) ]) [ (JR.field "SPACE" (JR.local "commonSeps")) ]) [ (JR.invoke "getOtherName_0" (JR.thisField "RIGHT") []) ]) []), (JR.int 7), (JR.int 0) ])) ]) ])
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
                    JR.return jstatic_instance ])
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

