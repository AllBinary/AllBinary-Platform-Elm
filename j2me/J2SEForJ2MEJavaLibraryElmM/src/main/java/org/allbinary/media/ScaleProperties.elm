module Org.Allbinary.Media.ScaleProperties exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media
-}

import JR
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "ScaleProperties"


jchain : List String
jchain =
    [ "ScaleProperties" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "scaleX", JR.defaultOf "F" ), ( "scaleY", JR.defaultOf "F" ), ( "scaleWidth", JR.defaultOf "I" ), ( "scaleHeight", JR.defaultOf "I" ), ( "shouldScale", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScaleProperties"
        [ ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ScaleProperties" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
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
                    JR.return (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendfloat_1" (JR.invoke "append_1" (JR.invoke "appendfloat_1" (JR.invoke "append_1" (JR.invoke "appendboolean_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "COLON_SEP" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.thisField "shouldScale") ]) [ (JR.str "scaleX: ") ]) [ (JR.thisField "scaleX") ]) [ (JR.str "scaleY: ") ]) [ (JR.thisField "scaleY") ]) [ (JR.str "scaleWidth: ") ]) [ (JR.thisField "scaleWidth") ]) [ (JR.str "scaleHeight: ") ]) [ (JR.thisField "scaleHeight") ]) []) ])
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

