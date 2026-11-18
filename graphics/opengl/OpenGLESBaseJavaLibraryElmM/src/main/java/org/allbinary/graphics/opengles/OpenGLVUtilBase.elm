module Org.Allbinary.Graphics.Opengles.OpenGLVUtilBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.opengles
-}

import JR



jclass : String
jclass =
    "OpenGLVUtilBase"


jchain : List String
jchain =
    [ "OpenGLVUtilBase" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "glTexEnvix_4", jm_glTexEnvix_4 )
        , ( "glTexParameterix_4", jm_glTexParameterix_4 )
        , ( "glGenerateMipmap_4", jm_glGenerateMipmap_4 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OpenGLVUtilBase"
        [ ( "jm_glTexEnvix_4", jm_glTexEnvix_4 ), ( "jm_glTexParameterix_4", jm_glTexParameterix_4 ), ( "jm_glGenerateMipmap_4", jm_glGenerateMipmap_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_glTexEnvix_4 : JR.Method
jm_glTexEnvix_4 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "target", "I" ), ( "pname", "I" ), ( "param", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_glTexParameterix_4 : JR.Method
jm_glTexParameterix_4 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "target", "I" ), ( "pname", "I" ), ( "param", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_glGenerateMipmap_4 : JR.Method
jm_glGenerateMipmap_4 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "textureId", "I" ), ( "target", "I" ), ( "generateMipMap", "Z" ) ] ""
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

