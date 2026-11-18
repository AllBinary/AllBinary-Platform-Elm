module Org.Allbinary.Game.Combat.Destroy.DestroyableBaseBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.combat.destroy
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Combat.Destroy.DestroyableInterface as DestroyableInterface


jclass : String
jclass =
    "DestroyableBaseBehavior"


jchain : List String
jchain =
    [ "DestroyableBaseBehavior" ]
        ++ DestroyableInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getName_0", jm_getName_0 )
        , ( "isDestroyed_0", jm_isDestroyed_0 )
        , ( "setDestroyed_1", jm_setDestroyed_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DestroyableBaseBehavior"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_isDestroyed_0", jm_isDestroyed_0 ), ( "jm_setDestroyed_1", jm_setDestroyed_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "DestroyableBaseBehavior" jclinit "instance"
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


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getName_0" (JR.getClass JR.this) []) ])
        (jregister jheap)
        jthis
        jargs


jm_isDestroyed_0 : JR.Method
jm_isDestroyed_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.callStatic CommonStrings.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setDestroyed_1 : JR.Method
jm_setDestroyed_1 jheap jthis jargs =
    JR.method [ ( "destroyed", "Z" ) ] ""
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

