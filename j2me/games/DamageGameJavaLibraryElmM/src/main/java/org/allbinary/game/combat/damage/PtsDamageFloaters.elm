module Org.Allbinary.Game.Combat.Damage.PtsDamageFloaters exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.combat.damage
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorArrayIndexer as BasicColorArrayIndexer
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Color.BasicColorSetUtil as BasicColorSetUtil
import Org.Allbinary.Logic.Java.Character.CharArrayFactory as CharArrayFactory
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Org.Allbinary.Game.Combat.Damage.DamageFloaters as DamageFloaters
import Org.Allbinary.Game.Rand.MyRandomFactory as MyRandomFactory
import Org.Allbinary.Logic.Math.PrimitiveLongUtil as PrimitiveLongUtil


jclass : String
jclass =
    "PtsDamageFloaters"


jchain : List String
jchain =
    [ "PtsDamageFloaters" ]
        ++ DamageFloaters.jchain


jfields : List ( String, JR.JValue )
jfields =
    DamageFloaters.jfields ++ [ ( "basicSetColorUtil", JR.defaultOf "" ), ( "layerInterface", JR.defaultOf "" ), ( "lastDamage", JR.defaultOf "" ), ( "lastDamageString", JR.defaultOf "" ), ( "lastDamageStringSizeArray", JR.defaultOf "" ), ( "circularIndexUtil", JR.defaultOf "" ), ( "primitiveLongUtil", JR.defaultOf "" ), ( "myRandomFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "add_1", jm_add_1 )
        , ( "paint_1", jm_paint_1 ) ]
        DamageFloaters.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PtsDamageFloaters"
        [ ( "jm_add_1", jm_add_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_basicColorArrayIndexer", jstatic_basicColorArrayIndexer ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_basicColorArrayIndexer : JR.M
jstatic_basicColorArrayIndexer s =
    JR.static "PtsDamageFloaters" jclinit "basicColorArrayIndexer"
        (JR.new BasicColorArrayIndexer.jnew_1 [ (JR.arrayOf "" [ (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), (JR.field "RED" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), (JR.field "YELLOW" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), (JR.field "BLUE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ]) ])
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect DamageFloaters.jinit_0 JR.this []),
                JR.exec (JR.setField "basicSetColorUtil" "" JR.this (JR.callStatic BasicColorSetUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "lastDamage" "" JR.this (JR.newArray "I" [ (JR.int 5) ])),
                JR.exec (JR.setField "lastDamageString" "" JR.this (JR.newArray "C" [ (JR.int 5), (JR.int 0) ])),
                JR.exec (JR.setField "lastDamageStringSizeArray" "" JR.this (JR.newArray "I" [ (JR.int 5) ])),
                JR.exec (JR.setField "circularIndexUtil" "" JR.this (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.int 5) ])),
                JR.exec (JR.setField "myRandomFactory" "" JR.this (JR.callStatic MyRandomFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "primitiveLongUtil" "" JR.this (JR.callStatic PrimitiveLongUtil.jm_createPowerOfTen_1 [ (JR.int 100000) ])), 
                    JR.exec (JR.setField "layerInterface" "" JR.this (JR.local "layerInterface")), 
                    JR.declare "CHAR_ARRAY" "" (JR.invoke "getZeroCharArray_0" (JR.callStatic CharArrayFactory.jm_getInstance_0 []) []), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength (JR.thisField "lastDamageString")) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68512 -> (JR.setLocal "index" "I" (JR.lit jwN68512))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "lastDamageString") (\jaN68404 -> JR.andThen (JR.local "index") (\jiN68404 -> (JR.aset (JR.lit jaN68404) (JR.lit jiN68404) (JR.local "CHAR_ARRAY"))))) ]) ] ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "damage", "I" ) ] ""
        (JR.run [ 
                    JR.declare "index" "I" (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") []), 
                    JR.exec (JR.andThen (JR.thisField "lastDamage") (\jaN68618 -> JR.andThen (JR.local "index") (\jiN68618 -> (JR.aset (JR.lit jaN68618) (JR.lit jiN68618) (JR.local "damage"))))), 
                    JR.exec (JR.andThen (JR.thisField "lastDamageString") (\jaN68658 -> JR.andThen (JR.local "index") (\jiN68658 -> (JR.aset (JR.lit jaN68658) (JR.lit jiN68658) (JR.invoke "getCharArray_1" (JR.thisField "primitiveLongUtil") [ (JR.aget (JR.thisField "lastDamage") (JR.local "index")) ]))))), 
                    JR.exec (JR.andThen (JR.thisField "lastDamageStringSizeArray") (\jaN68735 -> JR.andThen (JR.local "index") (\jiN68735 -> (JR.aset (JR.lit jaN68735) (JR.lit jiN68735) (JR.invoke "getCurrentTotalDigits_0" (JR.thisField "primitiveLongUtil") []))))), 
                    JR.exec (JR.invoke "next_0" (JR.thisField "circularIndexUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "viewPosition" "" (JR.invoke "getViewPosition_0" (JR.thisField "layerInterface") []), 
                    JR.declare "x" "I" (JR.invoke "getX_0" (JR.local "viewPosition") []), 
                    JR.declare "y" "I" (JR.invoke "getY_0" (JR.local "viewPosition") []), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength (JR.thisField "lastDamage")) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69495 -> (JR.setLocal "index" "I" (JR.lit jwN69495))) JR.decrement) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.aget (JR.thisField "lastDamage") (JR.local "index")) (JR.int 0)) (JR.run [ 
                            JR.declare "delta" "I" (JR.map2 JR.mul (JR.int 10) ((JR.map2 JR.add (JR.local "index") (JR.int 2)))), 
                            JR.exec (JR.invoke "setBasicColorP_2" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.invoke "get_0" jstatic_basicColorArrayIndexer []) ]), 
                            JR.exec (JR.invoke "drawChars_6" (JR.local "graphics") [ (JR.aget (JR.thisField "lastDamageString") (JR.local "index")), (JR.int 0), (JR.aget (JR.thisField "lastDamageStringSizeArray") (JR.local "index")), (JR.map2 JR.sub (JR.local "x") (JR.invoke "getNextInt_1" (JR.thisField "myRandomFactory") [ (JR.local "delta") ])), (JR.map2 JR.sub (JR.local "y") (JR.local "delta")), (JR.int 0) ]), 
                            JR.exec (JR.invoke "next_0" jstatic_basicColorArrayIndexer []) ]) identity, 
                        JR.exec (JR.andThen (JR.thisField "lastDamage") (\jaN69391 -> JR.andThen (JR.local "index") (\jiN69391 -> (JR.aset (JR.lit jaN69391) (JR.lit jiN69391) (JR.int 0))))) ]) ] ])
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

