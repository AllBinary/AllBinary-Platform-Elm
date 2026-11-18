module Org.Allbinary.Game.Configuration.Feature.InGameFeatureChoiceGroups exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.feature
-}

import JR
import Org.Allbinary.Logic.StdUtil as StdUtil


jclass : String
jclass =
    "InGameFeatureChoiceGroups"


jchain : List String
jchain =
    [ "InGameFeatureChoiceGroups" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "hashtable", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getExclusiveInstance_0", jm_getExclusiveInstance_0 )
        , ( "getMultipleInstance_0", jm_getMultipleInstance_0 )
        , ( "get_0", jm_get_0 )
        , ( "add_2", jm_add_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InGameFeatureChoiceGroups"
        [ ( "jm_getExclusiveInstance_0", jm_getExclusiveInstance_0 ), ( "jm_getMultipleInstance_0", jm_getMultipleInstance_0 ), ( "jm_get_0", jm_get_0 ), ( "jm_add_2", jm_add_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_gameFeatureChoiceGroupsExclusive", jstatic_gameFeatureChoiceGroupsExclusive ), ( "jstatic_gameFeatureChoiceGroupsMultiple", jstatic_gameFeatureChoiceGroupsMultiple ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_gameFeatureChoiceGroupsExclusive : JR.M
jstatic_gameFeatureChoiceGroupsExclusive s =
    JR.static "InGameFeatureChoiceGroups" jclinit "gameFeatureChoiceGroupsExclusive"
        (JR.new jnew_0 [])
        s


jstatic_gameFeatureChoiceGroupsMultiple : JR.M
jstatic_gameFeatureChoiceGroupsMultiple s =
    JR.static "InGameFeatureChoiceGroups" jclinit "gameFeatureChoiceGroupsMultiple"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "hashtable" "" JR.this (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getExclusiveInstance_0 : JR.Method
jm_getExclusiveInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_gameFeatureChoiceGroupsExclusive ])
        (jregister jheap)
        jthis
        jargs


jm_getMultipleInstance_0 : JR.Method
jm_getMultipleInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_gameFeatureChoiceGroupsMultiple ])
        (jregister jheap)
        jthis
        jargs


jm_get_0 : JR.Method
jm_get_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "hashtable") ])
        (jregister jheap)
        jthis
        jargs


jm_add_2 : JR.Method
jm_add_2 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "list", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "put_2" (JR.thisField "hashtable") [ (JR.local "name"), (JR.local "list") ]) ])
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

