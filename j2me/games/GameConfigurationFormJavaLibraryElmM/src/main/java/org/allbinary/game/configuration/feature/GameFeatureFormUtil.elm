module Org.Allbinary.Game.Configuration.Feature.GameFeatureFormUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.feature
-}

import JR
import Javax.Microedition.Lcdui.ChoiceGroup as ChoiceGroup
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Configuration.GameConfigurationUtil as GameConfigurationUtil
import Org.Allbinary.Game.Configuration.Feature.GameFeatureUtil as GameFeatureUtil
import Org.Allbinary.Util.HashtableUtil as HashtableUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.MIDPUtil as MIDPUtil
import Javax.Microedition.Lcdui.NullImage as NullImage
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GameFeatureFormUtil"


jchain : List String
jchain =
    [ "GameFeatureFormUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "meUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getChoiceGroup_3", jm_getChoiceGroup_3 )
        , ( "addChoiceGroup_3", jm_addChoiceGroup_3 )
        , ( "setDefault_1", jm_setDefault_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameFeatureFormUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getChoiceGroup_3", jm_getChoiceGroup_3 ), ( "jm_addChoiceGroup_3", jm_addChoiceGroup_3 ), ( "jm_setDefault_1", jm_setDefault_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameFeatureFormUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "meUtil" "" JR.this (JR.callStatic MIDPUtil.jm_getInstance_0 [])),
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


jm_getChoiceGroup_3 : JR.Method
jm_getChoiceGroup_3 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ), ( "name", "" ), ( "option", "I" ) ] ""
        (JR.run [ 
                    JR.declare "stringMaker" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "choiceGroup" "" (JR.new ChoiceGroup.jnew_4 [ (JR.local "name"), (JR.local "option"), (JR.invoke "getArrayInstance_0" (JR.callStatic StringUtil.jm_getInstance_0 []) []), NullImage.jstatic_NULL_IMAGE_ARRAY ]), 
                    JR.declare "list" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.local "name") ]), 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.declare "ADD_CHOICE" "" (JR.str ": Adding Choice: "), 
                    JR.declare "GET_CHOICE_GROUP" "" (JR.str "getChoiceGroup"), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68715 -> (JR.setLocal "index" "I" (JR.lit jwN68715))) JR.increment) ]) (JR.run [ 
                        JR.declare "gameFeature" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")), 
                        JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.local "name") ]) [ (JR.local "ADD_CHOICE") ]) [ (JR.invoke "toString_0" (JR.local "gameFeature") []) ]) []), JR.this, (JR.local "GET_CHOICE_GROUP") ]), 
                        JR.exec (JR.invoke "append_2" (JR.local "choiceGroup") [ (JR.invoke "toString_0" (JR.local "gameFeature") []), NullImage.jstatic_NULL_IMAGE ]), 
                        JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.local "gameFeature") ]) (JR.run [ 
                            JR.exec (JR.invoke "setSelectedIndex_2" (JR.local "choiceGroup") [ (JR.local "index"), (JR.bool True) ]) ]) identity ]) ], 
                    JR.return (JR.local "choiceGroup") ])
        (jregister jheap)
        jthis
        jargs


jm_addChoiceGroup_3 : JR.Method
jm_addChoiceGroup_3 jheap jthis jargs =
    JR.method [ ( "form", "" ), ( "hashtable", "" ), ( "option", "I" ) ] ""
        (JR.run [ 
                    JR.declare "stringMaker" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "ADDING_CHOICE_GROUP" "" (JR.str "Adding Choice Group: "), 
                    JR.declare "ADD_CHOICE_GROUP" "" (JR.str "addChoiceGroup"), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "hashtable") []), 
                    JR.declare "objectArray" "" (JR.invoke "getKeysAsArray_1" (JR.callStatic HashtableUtil.jm_getInstance_0 []) [ (JR.local "hashtable") ]), 
                    JR.declare "name" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69424 -> (JR.setLocal "index" "I" (JR.lit jwN69424))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "name" "" (JR.aget (JR.local "objectArray") (JR.local "index"))), 
                        JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.local "ADDING_CHOICE_GROUP") ]) [ (JR.local "name") ]) []), JR.this, (JR.local "ADD_CHOICE_GROUP") ]), 
                        JR.exec (JR.invoke "appendItem_2" (JR.thisField "meUtil") [ (JR.local "form"), (JR.invoke "getChoiceGroup_3" JR.this [ (JR.local "hashtable"), (JR.local "name"), (JR.local "option") ]) ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_setDefault_1 : JR.Method
jm_setDefault_1 jheap jthis jargs =
    JR.method [ ( "form", "" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "form") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69877 -> (JR.setLocal "index" "I" (JR.lit jwN69877))) JR.increment) ]) (JR.run [ 
                        JR.declare "item" "" (JR.invoke "get_1" (JR.local "form") [ (JR.local "index") ]), 
                        JR.ifElse (JR.instanceOf "GameConfigurationGauge" (JR.local "item")) (JR.run [ 
                            JR.exec (JR.invoke "setDefault_1" (JR.callStatic GameConfigurationUtil.jm_getInstance_0 []) [ (JR.local "item") ]) ]) (JR.run [ 
                        JR.ifElse (JR.instanceOf "ChoiceGroup" (JR.local "item")) (JR.run [ 
                            JR.exec (JR.invoke "setDefault_1" (JR.callStatic GameFeatureUtil.jm_getInstance_0 []) [ (JR.local "item") ]) ]) identity ]) ]) ] ])
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

