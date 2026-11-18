module Org.Allbinary.Image.PreResourceImageUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image
-}

import JR



jclass : String
jclass =
    "PreResourceImageUtil"


jchain : List String
jchain =
    [ "PreResourceImageUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "encapsulate_1", jm_encapsulate_1 )
        , ( "updateGL_2", jm_updateGL_2 )
        , ( "update_2", jm_update_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PreResourceImageUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_encapsulate_1", jm_encapsulate_1 ), ( "jm_updateGL_2", jm_updateGL_2 ), ( "jm_update_2", jm_update_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "PreResourceImageUtil" jclinit "instance"
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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_encapsulate_1 : JR.Method
jm_encapsulate_1 jheap jthis jargs =
    JR.method [ ( "image", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.local "image") ])
        (jregister jheap)
        jthis
        jargs


jm_updateGL_2 : JR.Method
jm_updateGL_2 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "image", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_update_2 : JR.Method
jm_update_2 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "image", "" ) ] ""
        identity
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

