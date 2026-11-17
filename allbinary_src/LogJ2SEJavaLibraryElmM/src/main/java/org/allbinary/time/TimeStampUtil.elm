module TimeStampUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.time
-}

import JR
import JCalendar
import JSimpleDateFormat


jclass : String
jclass =
    "TimeStampUtil"


jchain : List String
jchain =
    [ "TimeStampUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "simpleDataFormat", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getAsString_0", jm_getAsString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TimeStampUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getAsString_0", jm_getAsString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "TimeStampUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "simpleDataFormat" "" JR.this (JR.new JSimpleDateFormat.jnew_1 [ (JR.str "yyyy-MM-dd HH:mm:ss.SSS") ])),
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_getAsString_0 : JR.Method
jm_getAsString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "calendar" "" (JR.callStatic JCalendar.jm_getInstance_0 []), 
                    JR.declare "date" "" (JR.invoke "getTime_0" (JR.local "calendar") []), 
                    JR.return (JR.invoke "format_1" (JR.thisField "simpleDataFormat") [ (JR.local "date") ]) ])
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

