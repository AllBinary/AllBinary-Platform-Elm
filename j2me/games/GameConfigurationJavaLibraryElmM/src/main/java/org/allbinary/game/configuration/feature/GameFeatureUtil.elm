module Org.Allbinary.Game.Configuration.Feature.GameFeatureUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.feature
-}

import JR
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.Util.EnumerationUtil as EnumerationUtil
import Org.Allbinary.Game.Configuration.Feature.Feature as Feature
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Configuration.Feature.GameFeatureChoiceGroups as GameFeatureChoiceGroups
import Org.Allbinary.Util.HashtableUtil as HashtableUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "GameFeatureUtil"


jchain : List String
jchain =
    [ "GameFeatureUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "tsUtil", JR.defaultOf "" ), ( "enumerationUtil", JR.defaultOf "" ), ( "ON_GAME_FEATURE_CHANGE", JR.defaultOf "" ), ( "GAME_FEATURE_CHANGED", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "setDefault_1", jm_setDefault_1 )
        , ( "updateMultiple_1", jm_updateMultiple_1 )
        , ( "updateExclusiveForChoiceGroup_1", jm_updateExclusiveForChoiceGroup_1 )
        , ( "isExclusive_1", jm_isExclusive_1 )
        , ( "updateExclusive_1", jm_updateExclusive_1 )
        , ( "updateExclusiveList_2", jm_updateExclusiveList_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameFeatureUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_setDefault_1", jm_setDefault_1 ), ( "jm_updateMultiple_1", jm_updateMultiple_1 ), ( "jm_updateExclusiveForChoiceGroup_1", jm_updateExclusiveForChoiceGroup_1 ), ( "jm_isExclusive_1", jm_isExclusive_1 ), ( "jm_updateExclusive_1", jm_updateExclusive_1 ), ( "jm_updateExclusiveList_2", jm_updateExclusiveList_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameFeatureUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "tsUtil" "" JR.this (JR.callStatic TsUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "enumerationUtil" "" JR.this (JR.callStatic EnumerationUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "ON_GAME_FEATURE_CHANGE" "" JR.this (JR.str "onGameFeatureChange")),
                JR.exec (JR.setField "GAME_FEATURE_CHANGED" "" JR.this (JR.str "Game Feature Changed: ")),
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


jm_setDefault_1 : JR.Method
jm_setDefault_1 jheap jthis jargs =
    JR.method [ ( "choiceGroup", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "METHOD_NAME" "" (JR.str "setDefault"), 
                    JR.declare "SELECTED_ARRAY_RETURN" "" (JR.str "selectedArray_return["), 
                    JR.declare "SELECTED_SEP" "" (JR.str "] = "), 
                    JR.declare "selectedArray_return" "" (JR.newArray "Z" [ (JR.invoke "size_0" (JR.local "choiceGroup") []) ]), 
                    JR.declare "total" "I" (JR.invoke "getSelectedFlags_1" (JR.local "choiceGroup") [ (JR.local "selectedArray_return") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Multiple Total Choices: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "total") ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.local "METHOD_NAME") ]), 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "selectedArray_return"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68618 -> (JR.setLocal "index" "I" (JR.lit jwN68618))) JR.increment) ]) (JR.run [ 
                        JR.declare "isSelected" "Z" (JR.aget (JR.local "selectedArray_return") (JR.local "index")), 
                        JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "SELECTED_ARRAY_RETURN") ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "index") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "SELECTED_SEP") ]), 
                        JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.local "isSelected") ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.local "METHOD_NAME") ]), 
                        JR.declare "selectedChoiceLabel" "" (JR.invoke "getString_1" (JR.local "choiceGroup") [ (JR.local "index") ]), 
                        JR.declare "gameFeature" "" (JR.callStatic Feature.jm_getInstance_1 [ (JR.local "selectedChoiceLabel") ]), 
                        JR.ifElse (JR.invoke "isDefault_1" (JR.local "features") [ (JR.local "gameFeature") ]) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "features") [ (JR.local "gameFeature") ]), 
                            JR.exec (JR.invoke "setSelectedIndex_2" (JR.local "choiceGroup") [ (JR.local "index"), (JR.bool True) ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "remove_1" (JR.local "features") [ (JR.local "gameFeature") ]), 
                            JR.exec (JR.invoke "setSelectedIndex_2" (JR.local "choiceGroup") [ (JR.local "index"), (JR.bool False) ]) ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_updateMultiple_1 : JR.Method
jm_updateMultiple_1 jheap jthis jargs =
    JR.method [ ( "choiceGroup", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "METHOD_NAME" "" (JR.str "updateMultiple"), 
                    JR.declare "SELECTED_ARRAY_RETURN" "" (JR.str "selectedArray_return["), 
                    JR.declare "SELECTED_SEP" "" (JR.str "] = "), 
                    JR.declare "selectedArray_return" "" (JR.newArray "Z" [ (JR.invoke "size_0" (JR.local "choiceGroup") []) ]), 
                    JR.declare "total" "I" (JR.invoke "getSelectedFlags_1" (JR.local "choiceGroup") [ (JR.local "selectedArray_return") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Multiple Total Choices: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "total") ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.local "METHOD_NAME") ]), 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "selectedArray_return"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69717 -> (JR.setLocal "index" "I" (JR.lit jwN69717))) JR.increment) ]) (JR.run [ 
                        JR.declare "isSelected" "Z" (JR.aget (JR.local "selectedArray_return") (JR.local "index")), 
                        JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "SELECTED_ARRAY_RETURN") ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "index") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "SELECTED_SEP") ]), 
                        JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.local "isSelected") ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.local "METHOD_NAME") ]), 
                        JR.declare "selectedChoiceLabel" "" (JR.invoke "getString_1" (JR.local "choiceGroup") [ (JR.local "index") ]), 
                        JR.declare "gameFeature" "" (JR.callStatic Feature.jm_getInstance_1 [ (JR.local "selectedChoiceLabel") ]), 
                        JR.ifElse (JR.and (JR.map JR.not_ (JR.local "isSelected")) (JR.invoke "isFeature_1" (JR.local "features") [ (JR.local "gameFeature") ])) (JR.run [ 
                            JR.exec (JR.invoke "remove_1" (JR.local "features") [ (JR.local "gameFeature") ]) ]) (JR.run [ 
                        JR.ifElse (JR.and (JR.local "isSelected") (JR.map JR.not_ (JR.invoke "isFeature_1" (JR.local "features") [ (JR.local "gameFeature") ]))) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "features") [ (JR.local "gameFeature") ]) ]) identity ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_updateExclusiveForChoiceGroup_1 : JR.Method
jm_updateExclusiveForChoiceGroup_1 jheap jthis jargs =
    JR.method [ ( "choiceGroup", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "METHOD_NAME" "" (JR.str "updateExclusive"), 
                    JR.declare "SELECTED_ARRAY_RETURN" "" (JR.str "selectedArray_return["), 
                    JR.declare "SELECTED_SEP" "" (JR.str "] = "), 
                    JR.declare "selectedArray_return" "" (JR.newArray "Z" [ (JR.invoke "size_0" (JR.local "choiceGroup") []) ]), 
                    JR.declare "total" "I" (JR.invoke "getSelectedFlags_1" (JR.local "choiceGroup") [ (JR.local "selectedArray_return") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Exclusive Total Choices: 1==") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "total") ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.local "METHOD_NAME") ]), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "selectedArray_return"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70590 -> (JR.setLocal "index" "I" (JR.lit jwN70590))) JR.increment) ]) (JR.run [ 
                        JR.declare "isSelected" "Z" (JR.aget (JR.local "selectedArray_return") (JR.local "index")), 
                        JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "SELECTED_ARRAY_RETURN") ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "index") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "SELECTED_SEP") ]), 
                        JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.local "isSelected") ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.local "METHOD_NAME") ]), 
                        JR.ifElse (JR.local "isSelected") (JR.run [ 
                            JR.declare "selectedChoiceLabel" "" (JR.invoke "getString_1" (JR.local "choiceGroup") [ (JR.local "index") ]), 
                            JR.exec (JR.invoke "updateExclusive_1" JR.this [ (JR.local "selectedChoiceLabel") ]) ]) identity ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_isExclusive_1 : JR.Method
jm_isExclusive_1 jheap jthis jargs =
    JR.method [ ( "itemLabel", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "enumeration" "" (JR.invoke "keys_0" (JR.invoke "get_0" (JR.callStatic GameFeatureChoiceGroups.jm_getExclusiveInstance_0 []) []) []), 
                    JR.declare "name" "" (JR.lit (JR.defaultOf "")), 
                    JR.while (JR.invoke "hasMoreElements_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ]) (JR.run [ 
                        JR.exec (JR.setLocal "name" "" (JR.invoke "nextElement_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ])), 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_2" (JR.thisField "tsUtil") [ (JR.local "itemLabel"), (JR.local "name") ]) (JR.int 0)) (JR.run [ 
                            JR.return (JR.bool True) ]) identity ]), 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_updateExclusive_1 : JR.Method
jm_updateExclusive_1 jheap jthis jargs =
    JR.method [ ( "selectedChoiceLabel", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "ITEM_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.local "selectedChoiceLabel") ]) []), JR.this, (JR.str "updateExclusive") ]), 
                    JR.declare "gameFeature" "" (JR.callStatic Feature.jm_getInstance_1 [ (JR.local "selectedChoiceLabel") ]), 
                    JR.declare "hashtable" "" (JR.invoke "get_0" (JR.callStatic GameFeatureChoiceGroups.jm_getExclusiveInstance_0 []) []), 
                    JR.declare "objectArray" "" (JR.invoke "getKeysAsArray_1" (JR.callStatic HashtableUtil.jm_getInstance_0 []) [ (JR.local "hashtable") ]), 
                    JR.declare "basicArrayList" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "anyType" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size" "I" (JR.alength (JR.local "objectArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN71584 -> (JR.setLocal "index" "I" (JR.lit jwN71584))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "anyType" "" (JR.aget (JR.local "objectArray") (JR.local "index"))), 
                        JR.exec (JR.setLocal "basicArrayList" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.local "anyType") ])), 
                        JR.exec (JR.invoke "updateExclusiveList_2" JR.this [ (JR.local "gameFeature"), (JR.local "basicArrayList") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_updateExclusiveList_2 : JR.Method
jm_updateExclusiveList_2 jheap jthis jargs =
    JR.method [ ( "gameFeature", "" ), ( "list", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "contains_1" (JR.local "list") [ (JR.local "gameFeature") ]) (JR.run [ 
                        JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                        JR.declare "addIndex" "I" (JR.invoke "indexOf_1" (JR.local "list") [ (JR.local "gameFeature") ]), 
                        JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN72053 -> (JR.setLocal "index" "I" (JR.lit jwN72053))) JR.increment) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "addIndex") (JR.local "index")) (JR.run [ 
                                JR.exec (JR.invoke "remove_1" (JR.local "features") [ (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")) ]) ]) (JR.run [ 
                                JR.exec (JR.invoke "add_1" (JR.local "features") [ (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")) ]) ]) ]) ] ]) identity ])
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

