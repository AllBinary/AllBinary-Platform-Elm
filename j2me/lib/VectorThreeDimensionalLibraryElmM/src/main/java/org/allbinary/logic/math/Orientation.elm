module Org.Allbinary.Logic.Math.Orientation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.math
-}

import JR
import Org.Allbinary.Logic.Math.BasicDecimal as BasicDecimal
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "Orientation"


jchain : List String
jchain =
    [ "Orientation" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "yaw", JR.defaultOf "" ), ( "pitch", JR.defaultOf "" ), ( "roll", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_3", jm_getInstance_3 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Orientation"
        [ ( "jm_getInstance_3", jm_getInstance_3 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_NONE", jstatic_NONE ), ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NONE : JR.M
jstatic_NONE s =
    JR.static "Orientation" jclinit "NONE"
        (JR.new jnew_3 [ (JR.int 0), (JR.int 0), (JR.int 0) ])
        s


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "Orientation" jclinit "SINGLETON"
        (JR.new jnew_3 [ (JR.int 0), (JR.int 0), (JR.int 0) ])
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "yaw", "I" ), ( "pitch", "I" ), ( "roll", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "yaw" "" JR.this (JR.new BasicDecimal.jnew_1 [ (JR.int 0) ])),
                JR.exec (JR.setField "pitch" "" JR.this (JR.new BasicDecimal.jnew_1 [ (JR.int 0) ])),
                JR.exec (JR.setField "roll" "" JR.this (JR.new BasicDecimal.jnew_1 [ (JR.int 0) ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setint_1" (JR.thisField "yaw") [ (JR.local "yaw") ]), 
                    JR.exec (JR.invoke "setint_1" (JR.thisField "pitch") [ (JR.local "pitch") ]), 
                    JR.exec (JR.invoke "setint_1" (JR.thisField "roll") [ (JR.local "roll") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getInstance_3 : JR.Method
jm_getInstance_3 jheap jthis jargs =
    JR.method [ ( "yaw", "I" ), ( "pitch", "I" ), ( "roll", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setint_1" (JR.field "yaw" jstatic_SINGLETON) [ (JR.local "yaw") ]), 
                    JR.exec (JR.invoke "setint_1" (JR.field "pitch" jstatic_SINGLETON) [ (JR.local "pitch") ]), 
                    JR.exec (JR.invoke "setint_1" (JR.field "roll" jstatic_SINGLETON) [ (JR.local "roll") ]), 
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Y: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.thisField "yaw") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " P: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.thisField "pitch") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " R: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.thisField "roll") []) ]), 
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

