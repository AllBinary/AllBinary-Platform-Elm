module Org.Allbinary.Game.Resource.FeaturedResourceRelativeRelationshipFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.resource
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil
import Org.Allbinary.Game.Resource.FeaturedResourceFactory as FeaturedResourceFactory
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Layer.Relationship.RelativeLayerRelationship as RelativeLayerRelationship
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "FeaturedResourceRelativeRelationshipFactory"


jchain : List String
jchain =
    [ "FeaturedResourceRelativeRelationshipFactory" ]
        ++ FeaturedResourceFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    FeaturedResourceFactory.jfields ++ [ ( "basicArrayListUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getRelativeRelationshipList_2", jm_getRelativeRelationshipList_2 )
        , ( "duplicate_2", jm_duplicate_2 ) ]
        FeaturedResourceFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FeaturedResourceRelativeRelationshipFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getRelativeRelationshipList_2", jm_getRelativeRelationshipList_2 ), ( "jm_duplicate_2", jm_duplicate_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_INSTANCE", jstatic_INSTANCE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_INSTANCE : JR.M
jstatic_INSTANCE s =
    JR.static "FeaturedResourceRelativeRelationshipFactory" jclinit "INSTANCE"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect FeaturedResourceFactory.jinit_0 JR.this []),
                JR.exec (JR.setField "basicArrayListUtil" "" JR.this (JR.callStatic BasicArrayListUtil.jm_getInstance_0 [])),
                identity,
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
                    JR.return jstatic_INSTANCE ])
        (jregister jheap)
        jthis
        jargs


jm_getRelativeRelationshipList_2 : JR.Method
jm_getRelativeRelationshipList_2 jheap jthis jargs =
    JR.method [ ( "resource", "" ), ( "layer", "" ) ] ""
        (JR.run [ 
                    JR.declare "featureReleaseList" "" (JR.invoke "getList_0" JR.this []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.invoke "getList_0" JR.this []) []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68384 -> (JR.setLocal "index" "I" (JR.lit jwN68384))) JR.increment) ]) (JR.run [ 
                        JR.declare "featureInterface" "" (JR.aget (JR.field "objectArray" (JR.local "featureReleaseList")) (JR.local "index")), 
                        JR.ifElse (JR.invoke "isFeature_0" (JR.local "featureInterface") []) (JR.run [ 
                            JR.declare "list" "" (JR.invoke "getResourceRelativeRelationshipList_1" (JR.local "featureInterface") [ (JR.local "resource") ]), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "list") (JR.invoke "getImmutableInstance_0" (JR.thisField "basicArrayListUtil") [])) (JR.run [ 
                                JR.return (JR.invoke "duplicate_2" JR.this [ (JR.local "list"), (JR.local "layer") ]) ]) identity ]) identity ]) ], 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Not available for current feature selection or Resource: ") ]) [ (JR.local "resource") ]) []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_duplicate_2 : JR.Method
jm_duplicate_2 jheap jthis jargs =
    JR.method [ ( "list", "" ), ( "layer", "" ) ] ""
        (JR.run [ 
                    JR.declare "pointFactory" "" (JR.callStatic PointFactory.jm_getInstance_0 []), 
                    JR.declare "newList" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68939 -> (JR.setLocal "index" "I" (JR.lit jwN68939))) JR.increment) ]) (JR.run [ 
                        JR.declare "relativeRelationship" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")), 
                        JR.exec (JR.invoke "add_1" (JR.local "newList") [ (JR.new RelativeLayerRelationship.jnew_3 [ (JR.local "layer"), (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.invoke "getX_0" (JR.local "relativeRelationship") []), (JR.invoke "getY_0" (JR.local "relativeRelationship") []) ]), (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) []) ]) ]) ]) ], 
                    JR.return (JR.local "newList") ])
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

