module Org.Allbinary.Logic.Math.Vector.Vertex exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.math.vector
-}

import JR
import Org.Allbinary.Logic.Math.BasicDecimal as BasicDecimal
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Math.PositionStrings as PositionStrings
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "Vertex"


jchain : List String
jchain =
    [ "Vertex" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "x", JR.defaultOf "" ), ( "y", JR.defaultOf "" ), ( "z", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Vertex"
        [ ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "x" "" JR.this (JR.new BasicDecimal.jnew_1 [ (JR.int 0) ])),
                JR.exec (JR.setField "y" "" JR.this (JR.new BasicDecimal.jnew_1 [ (JR.int 0) ])),
                JR.exec (JR.setField "z" "" JR.this (JR.new BasicDecimal.jnew_1 [ (JR.int 0) ])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "positionStrings" "" (JR.callStatic PositionStrings.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "X_LABEL" (JR.local "positionStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.thisField "x") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "Y_LABEL" (JR.local "positionStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.thisField "y") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "Z_LABEL" (JR.local "positionStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.thisField "z") []) ]), 
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

