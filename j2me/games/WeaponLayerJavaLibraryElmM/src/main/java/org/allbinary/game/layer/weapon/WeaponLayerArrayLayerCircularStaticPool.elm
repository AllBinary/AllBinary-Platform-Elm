module Org.Allbinary.Game.Layer.Weapon.WeaponLayerArrayLayerCircularStaticPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.weapon
-}

import JR
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil


jclass : String
jclass =
    "WeaponLayerArrayLayerCircularStaticPool"


jchain : List String
jchain =
    [ "WeaponLayerArrayLayerCircularStaticPool" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "MAX", JR.defaultOf "I" ), ( "circularIndexUtil", JR.defaultOf "" ), ( "WEAPONLAYER_ARRAY", JR.defaultOf "" ), ( "TWO_WEAPONLAYER_ARRAY", JR.defaultOf "" ), ( "THREE_WEAPONLAYER_ARRAY", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_0", jm_init_0 )
        , ( "getWeaponLayerArrays_1", jm_getWeaponLayerArrays_1 )
        , ( "getInstanceArray_1", jm_getInstanceArray_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "WeaponLayerArrayLayerCircularStaticPool"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_0", jm_init_0 ), ( "jm_getWeaponLayerArrays_1", jm_getWeaponLayerArrays_1 ), ( "jm_getInstanceArray_1", jm_getInstanceArray_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "WeaponLayerArrayLayerCircularStaticPool" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "MAX" "I" JR.this (JR.int 5)),
                JR.exec (JR.setField "circularIndexUtil" "" JR.this (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.thisField "MAX") ])),
                JR.exec (JR.setField "WEAPONLAYER_ARRAY" "" JR.this (JR.newArray "" [ (JR.map2 JR.mul (JR.thisField "MAX") (JR.int 2)) ])),
                JR.exec (JR.setField "TWO_WEAPONLAYER_ARRAY" "" JR.this (JR.newArray "" [ (JR.thisField "MAX") ])),
                JR.exec (JR.setField "THREE_WEAPONLAYER_ARRAY" "" JR.this (JR.newArray "" [ (JR.thisField "MAX") ])),
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


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.thisField "MAX")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70046 -> (JR.setLocal "index" "I" (JR.lit jwN70046))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "WEAPONLAYER_ARRAY") (\jaN69830 -> JR.andThen (JR.local "index") (\jiN69830 -> (JR.aset (JR.lit jaN69830) (JR.lit jiN69830) (JR.newArray "" [ (JR.int 1) ]))))), 
                        JR.exec (JR.andThen (JR.thisField "TWO_WEAPONLAYER_ARRAY") (\jaN69885 -> JR.andThen (JR.local "index") (\jiN69885 -> (JR.aset (JR.lit jaN69885) (JR.lit jiN69885) (JR.newArray "" [ (JR.int 2) ]))))), 
                        JR.exec (JR.andThen (JR.thisField "THREE_WEAPONLAYER_ARRAY") (\jaN69940 -> JR.andThen (JR.local "index") (\jiN69940 -> (JR.aset (JR.lit jaN69940) (JR.lit jiN69940) (JR.newArray "" [ (JR.int 3) ]))))) ]) ], 
                    JR.exec (JR.setField "WEAPONLAYER_ARRAY" "" JR.this (JR.thisField "WEAPONLAYER_ARRAY")), 
                    JR.exec (JR.setField "TWO_WEAPONLAYER_ARRAY" "" JR.this (JR.thisField "TWO_WEAPONLAYER_ARRAY")), 
                    JR.exec (JR.setField "THREE_WEAPONLAYER_ARRAY" "" JR.this (JR.thisField "THREE_WEAPONLAYER_ARRAY")) ])
        (jregister jheap)
        jthis
        jargs


jm_getWeaponLayerArrays_1 : JR.Method
jm_getWeaponLayerArrays_1 jheap jthis jargs =
    JR.method [ ( "size", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "size") (JR.int 1)) (JR.run [ 
                        JR.return (JR.thisField "WEAPONLAYER_ARRAY") ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "size") (JR.int 2)) (JR.run [ 
                        JR.return (JR.thisField "TWO_WEAPONLAYER_ARRAY") ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "size") (JR.int 3)) (JR.run [ 
                        JR.return (JR.thisField "THREE_WEAPONLAYER_ARRAY") ]) identity ]) ]), 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceArray_1 : JR.Method
jm_getInstanceArray_1 jheap jthis jargs =
    JR.method [ ( "size", "I" ) ] ""
        (JR.run [ 
                    JR.declare "weaponLayerArray" "" (JR.aget (JR.invoke "getWeaponLayerArrays_1" JR.this [ (JR.local "size") ]) (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") [])), 
                    JR.exec (JR.invoke "next_0" (JR.thisField "circularIndexUtil") []), 
                    JR.return (JR.local "weaponLayerArray") ])
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

