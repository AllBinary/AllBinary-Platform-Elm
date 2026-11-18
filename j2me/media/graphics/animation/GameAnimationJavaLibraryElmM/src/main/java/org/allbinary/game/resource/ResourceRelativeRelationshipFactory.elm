module Org.Allbinary.Game.Resource.ResourceRelativeRelationshipFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.resource
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil
import Org.Allbinary.Game.Resource.ResourceRelativeRelationshipFactoryInterface as ResourceRelativeRelationshipFactoryInterface
import Org.Allbinary.Logic.StdUtil as StdUtil


jclass : String
jclass =
    "ResourceRelativeRelationshipFactory"


jchain : List String
jchain =
    [ "ResourceRelativeRelationshipFactory" ]
        ++ ResourceRelativeRelationshipFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "basicArrayListUtil", JR.defaultOf "" ), ( "hashtable", JR.defaultOf "" ), ( "initialized", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "init_1", jm_init_1 )
        , ( "getResourceRelativeRelationshipList_1", jm_getResourceRelativeRelationshipList_1 )
        , ( "addResourceRelativeRelationship_2", jm_addResourceRelativeRelationship_2 )
        , ( "isLoadingLevel_1", jm_isLoadingLevel_1 )
        , ( "isFeature_0", jm_isFeature_0 )
        , ( "setInitialized_1", jm_setInitialized_1 )
        , ( "isInitialized_0", jm_isInitialized_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ResourceRelativeRelationshipFactory"
        [ ( "jm_init_1", jm_init_1 ), ( "jm_getResourceRelativeRelationshipList_1", jm_getResourceRelativeRelationshipList_1 ), ( "jm_addResourceRelativeRelationship_2", jm_addResourceRelativeRelationship_2 ), ( "jm_isLoadingLevel_1", jm_isLoadingLevel_1 ), ( "jm_isFeature_0", jm_isFeature_0 ), ( "jm_setInitialized_1", jm_setInitialized_1 ), ( "jm_isInitialized_0", jm_isInitialized_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "basicArrayListUtil" "" JR.this (JR.callStatic BasicArrayListUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "hashtable" "" JR.this (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "level", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setInitialized_1" JR.this [ (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getResourceRelativeRelationshipList_1 : JR.Method
jm_getResourceRelativeRelationshipList_1 jheap jthis jargs =
    JR.method [ ( "resource", "" ) ] ""
        (JR.run [ 
                    JR.declare "listCanBeNull" "" (JR.invoke "get_1" (JR.thisField "hashtable") [ (JR.local "resource") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "listCanBeNull") JR.null) (JR.run [ 
                        JR.return (JR.invoke "getImmutableInstance_0" (JR.thisField "basicArrayListUtil") []) ]) identity, 
                    JR.return (JR.local "listCanBeNull") ])
        (jregister jheap)
        jthis
        jargs


jm_addResourceRelativeRelationship_2 : JR.Method
jm_addResourceRelativeRelationship_2 jheap jthis jargs =
    JR.method [ ( "resource", "" ), ( "hardPoint", "" ) ] ""
        (JR.run [ 
                    JR.declare "list" "" (JR.invoke "getResourceRelativeRelationshipList_1" JR.this [ (JR.local "resource") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "list") (JR.invoke "getImmutableInstance_0" (JR.thisField "basicArrayListUtil") [])) (JR.run [ 
                        JR.exec (JR.setLocal "list" "" (JR.new BasicArrayListD.jnew_0 [])) ]) identity, 
                    JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.local "hardPoint") ]), 
                    JR.exec (JR.invoke "put_2" (JR.thisField "hashtable") [ (JR.local "resource"), (JR.local "list") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isLoadingLevel_1 : JR.Method
jm_isLoadingLevel_1 jheap jthis jargs =
    JR.method [ ( "level", "I" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isFeature_0 : JR.Method
jm_isFeature_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_setInitialized_1 : JR.Method
jm_setInitialized_1 jheap jthis jargs =
    JR.method [ ( "initialized", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "initialized" "Z" JR.this (JR.local "initialized")) ])
        (jregister jheap)
        jthis
        jargs


jm_isInitialized_0 : JR.Method
jm_isInitialized_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "initialized") ])
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

