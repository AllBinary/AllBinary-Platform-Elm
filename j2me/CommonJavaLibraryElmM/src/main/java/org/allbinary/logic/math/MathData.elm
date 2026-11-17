module MathData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.math
-}

import JR
import CommonPhoneStrings
import CommonSeps


jclass : String
jclass =
    "MathData"


jchain : List String
jchain =
    [ "MathData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "EQUALS", JR.defaultOf "" ), ( "PLUS", JR.defaultOf "" ), ( "GREATER_THAN", JR.defaultOf "" ), ( "MINUS", JR.defaultOf "" ), ( "DIVIDE", JR.defaultOf "" ), ( "MULTIPLY", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MathData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "MathData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "PLUS" "" JR.this (JR.str "+")),
                JR.exec (JR.setField "GREATER_THAN" "" JR.this (JR.str ">")),
                identity,
                (JR.run [ 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.exec (JR.setField "EQUALS" "" JR.this (JR.field "EQUALS" (JR.local "commonSeps"))), 
                    JR.exec (JR.setField "MINUS" "" JR.this (JR.field "DASH" (JR.local "commonSeps"))), 
                    JR.exec (JR.setField "DIVIDE" "" JR.this (JR.field "FORWARD_SLASH" (JR.local "commonSeps"))), 
                    JR.exec (JR.setField "MULTIPLY" "" JR.this (JR.field "STAR" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 []))) ]) ])
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

