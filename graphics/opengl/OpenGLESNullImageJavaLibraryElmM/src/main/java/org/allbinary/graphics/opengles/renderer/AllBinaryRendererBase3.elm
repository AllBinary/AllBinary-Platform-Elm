module Org.Allbinary.Graphics.Opengles.Renderer.AllBinaryRendererBase3 exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.opengles.renderer
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD


jclass : String
jclass =
    "AllBinaryRendererBase3"


jchain : List String
jchain =
    [ "AllBinaryRendererBase3" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "update_1", jm_update_1 )
        , ( "add_1", jm_add_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryRendererBase3"
        [ ( "jm_update_1", jm_update_1 ), ( "jm_add_1", jm_add_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_update_1 : JR.Method
jm_update_1 jheap jthis jargs =
    JR.method [ ( "gl", "" ) ] ""
        (JR.run [ 
                    JR.while (JR.map2 JR.greater (JR.invoke "size_0" (JR.thisField "list") []) (JR.int 0)) (JR.run [ 
                        JR.declare "openGLESImage" "" (JR.invoke "removeAt_1" (JR.thisField "list") [ (JR.int 0) ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "openGLESImage") JR.null) (JR.run [ 
                            JR.exec (JR.invoke "set_1" (JR.local "openGLESImage") [ (JR.local "gl") ]) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "image", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "image") ]) ])
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

