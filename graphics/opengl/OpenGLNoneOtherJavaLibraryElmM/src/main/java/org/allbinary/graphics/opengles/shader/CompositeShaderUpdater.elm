module Org.Allbinary.Graphics.Opengles.Shader.CompositeShaderUpdater exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.opengles.shader
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Graphics.Opengles.Shader.ShaderUpdater as ShaderUpdater
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "CompositeShaderUpdater"


jchain : List String
jchain =
    [ "CompositeShaderUpdater" ]
        ++ ShaderUpdater.jchain


jfields : List ( String, JR.JValue )
jfields =
    ShaderUpdater.jfields ++ [ ( "commonSeps", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "onSurfaceCreated_3", jm_onSurfaceCreated_3 )
        , ( "onSurfaceDestroyed_1", jm_onSurfaceDestroyed_1 ) ]
        ShaderUpdater.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CompositeShaderUpdater"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_onSurfaceCreated_3", jm_onSurfaceCreated_3 ), ( "jm_onSurfaceDestroyed_1", jm_onSurfaceDestroyed_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        [ ( "jstatic_instanceC", jstatic_instanceC ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instanceC : JR.M
jstatic_instanceC s =
    JR.static "CompositeShaderUpdater" jclinit "instanceC"
        (JR.new jnew_4 [ (JR.invoke "getArrayInstance_0" (JR.callStatic StringUtil.jm_getInstance_0 []) []), (JR.invoke "getArrayInstance_0" (JR.callStatic StringUtil.jm_getInstance_0 []) []), (JR.invoke "getArrayInstance_0" (JR.callStatic StringUtil.jm_getInstance_0 []) []), (JR.field "NULL_INT_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 [])) ])
        s


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "uniformBlockArray", "" ), ( "uniformArray", "" ), ( "attributeArray", "" ), ( "attributeHandleArray", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ShaderUpdater.jinit_0 JR.this []),
                JR.exec (JR.setField "commonSeps" "" JR.this (JR.callStatic CommonSeps.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instanceC ])
        (jregister jheap)
        jthis
        jargs


jm_onSurfaceCreated_3 : JR.Method
jm_onSurfaceCreated_3 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "eglConfig", "" ), ( "programHandle", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onSurfaceDestroyed_1 : JR.Method
jm_onSurfaceDestroyed_1 jheap jthis jargs =
    JR.method [ ( "gl", "" ) ] ""
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

