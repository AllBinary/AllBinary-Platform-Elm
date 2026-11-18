module Org.Allbinary.Image.IndexedAnimationToImageArrayUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image
-}

import JR
import Org.Allbinary.Image.AnimationFrameToImageUtil as AnimationFrameToImageUtil


jclass : String
jclass =
    "IndexedAnimationToImageArrayUtil"


jchain : List String
jchain =
    [ "IndexedAnimationToImageArrayUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_3", jm_getInstance_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "IndexedAnimationToImageArrayUtil"
        [ ( "jm_getInstance_3", jm_getInstance_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_getInstance_3 : JR.Method
jm_getInstance_3 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ), ( "sequentialAnimationInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "getAnimationSize_0" (JR.local "sequentialAnimationInterface") []), 
                    JR.declare "imageArray" "" (JR.newArray "" [ (JR.local "size") ]), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66821 -> (JR.setLocal "index" "I" (JR.lit jwN66821))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "setFrame_1" (JR.local "sequentialAnimationInterface") [ (JR.local "index") ]), 
                        JR.exec (JR.andThen (JR.local "imageArray") (\jaN66693 -> JR.andThen (JR.local "index") (\jiN66693 -> (JR.aset (JR.lit jaN66693) (JR.lit jiN66693) (JR.invoke "getInstanceWH_3" (JR.callStatic AnimationFrameToImageUtil.jm_getInstance_0 []) [ (JR.local "width"), (JR.local "height"), (JR.local "sequentialAnimationInterface") ]))))) ]) ], 
                    JR.return (JR.local "imageArray") ])
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

