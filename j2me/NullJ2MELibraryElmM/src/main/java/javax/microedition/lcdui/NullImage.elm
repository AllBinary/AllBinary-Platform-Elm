module Javax.Microedition.Lcdui.NullImage exposing (..)

{-| Generated Code Do Not Modify package javax.microedition.lcdui
-}

import JR
import Javax.Microedition.Lcdui.Image as Image


jclass : String
jclass =
    "NullImage"


jchain : List String
jchain =
    [ "NullImage" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullImage"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_IMAGE_ARRAY", jstatic_NULL_IMAGE_ARRAY ), ( "jstatic_NULL_IMAGE", jstatic_NULL_IMAGE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_IMAGE_ARRAY : JR.M
jstatic_NULL_IMAGE_ARRAY s =
    JR.static "NullImage" jclinit "NULL_IMAGE_ARRAY"
        (JR.newArray "" [ (JR.int 0) ])
        s


jstatic_NULL_IMAGE : JR.M
jstatic_NULL_IMAGE s =
    JR.static "NullImage" jclinit "NULL_IMAGE"
        (JR.new Image.jnew_0 [])
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

