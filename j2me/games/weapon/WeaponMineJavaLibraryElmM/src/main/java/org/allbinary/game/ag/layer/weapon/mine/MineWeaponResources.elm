module Org.Allbinary.Game.Ag.Layer.Weapon.Mine.MineWeaponResources exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.weapon.mine
-}

import JR
import Org.Allbinary.Game.Layer.Resources.BasicGameResources as BasicGameResources
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "MineWeaponResources"


jchain : List String
jchain =
    [ "MineWeaponResources" ]
        ++ BasicGameResources.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicGameResources.jfields ++ [ ( "DROP_TEXT_RESOURCE", JR.defaultOf "" ), ( "DROP_RESOURCE", JR.defaultOf "" ), ( "DROP_ICON_RESOURCE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        BasicGameResources.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MineWeaponResources"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "MineWeaponResources" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BasicGameResources.jinit_0 JR.this []),
                JR.exec (JR.setField "DROP_TEXT_RESOURCE" "" JR.this (JR.str "/mine_drop_text_20_by_20.png")),
                JR.exec (JR.setField "DROP_RESOURCE" "" JR.this (JR.str "/mine_drop_20_by_20.png")),
                JR.exec (JR.setField "DROP_ICON_RESOURCE" "" JR.this (JR.str "/mine_drop_icon_20_by_20.png")),
                identity,
                (JR.run [ 
                    JR.declare "ROOT" "" (JR.str "/mine"), 
                    JR.declare "SMALL" "" (JR.str "_20_by_20.png"), 
                    JR.declare "MEDIUM" "" (JR.local "SMALL"), 
                    JR.declare "SIZE_FOUR" "" (JR.local "SMALL"), 
                    JR.declare "SIZE_FIVE" "" (JR.local "SMALL"), 
                    JR.declare "SIZE_SIX" "" (JR.local "SMALL"), 
                    JR.declare "SIZE" "" (JR.arrayOf "" [ (JR.local "SMALL"), (JR.local "MEDIUM"), (JR.local "SIZE_FOUR"), (JR.local "SIZE_FIVE"), (JR.local "SIZE_SIX") ]), 
                    JR.exec (JR.callVia BasicGameResources.jvtable "init_2" JR.this [ (JR.local "ROOT"), (JR.local "SIZE") ]) ]) ])
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
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "MineWeaponResources.instance" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_instance ])
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

