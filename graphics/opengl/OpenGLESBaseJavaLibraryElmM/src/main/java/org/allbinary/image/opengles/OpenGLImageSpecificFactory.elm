module Org.Allbinary.Image.Opengles.OpenGLImageSpecificFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image.opengles
-}

import JR
import Org.Allbinary.Image.Opengles.OpenGLImageFactory as OpenGLImageFactory
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "OpenGLImageSpecificFactory"


jchain : List String
jchain =
    [ "OpenGLImageSpecificFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "imageFactory", JR.defaultOf "" ), ( "updating", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "setImageFactory_1", jm_setImageFactory_1 )
        , ( "getImageFactory_0", jm_getImageFactory_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OpenGLImageSpecificFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_setImageFactory_1", jm_setImageFactory_1 ), ( "jm_getImageFactory_0", jm_getImageFactory_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "OpenGLImageSpecificFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "imageFactory" "" JR.this OpenGLImageFactory.jstatic_NULL_OPENGL_IMAGE_FACTORY),
                JR.exec (JR.setField "updating" "Z" JR.this (JR.bool False)),
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


jm_setImageFactory_1 : JR.Method
jm_setImageFactory_1 jheap jthis jargs =
    JR.method [ ( "imageFactory", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "imageFactory" "" JR.this (JR.local "imageFactory")), 
                    JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Selected Image Factory: ") ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.thisField "imageFactory") ]) ]) []), JR.this, (JR.str "setImageFactory") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getImageFactory_0 : JR.Method
jm_getImageFactory_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "imageFactory") ])
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

