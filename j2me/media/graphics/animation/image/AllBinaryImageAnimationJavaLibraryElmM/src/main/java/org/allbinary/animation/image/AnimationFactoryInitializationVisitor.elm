module Org.Allbinary.Animation.Image.AnimationFactoryInitializationVisitor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Math.PositionStrings as PositionStrings
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "AnimationFactoryInitializationVisitor"


jchain : List String
jchain =
    [ "AnimationFactoryInitializationVisitor" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "width", JR.defaultOf "I" ), ( "height", JR.defaultOf "I" ), ( "dx", JR.defaultOf "I" ), ( "dy", JR.defaultOf "I" ), ( "originalDx", JR.defaultOf "I" ), ( "originalDy", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "visit_0", jm_visit_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AnimationFactoryInitializationVisitor"
        [ ( "jm_visit_0", jm_visit_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_visit_0 : JR.Method
jm_visit_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.declare "commonLabels" "" (JR.callStatic CommonLabels.jm_getInstance_0 []), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "appendfloat_1" (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "DX_LABEL" (JR.callStatic PositionStrings.jm_getInstance_0 [])) ]) [ (JR.cast "F" (JR.thisField "dx")) ]), 
                    JR.exec (JR.invoke "appendfloat_1" (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "DY_LABEL" (JR.callStatic PositionStrings.jm_getInstance_0 [])) ]) [ (JR.cast "F" (JR.thisField "dy")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "WIDTH_LABEL" (JR.local "commonLabels")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "width") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.local "commonSeps")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "HEIGHT_LABEL" (JR.local "commonLabels")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "height") ]), 
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

