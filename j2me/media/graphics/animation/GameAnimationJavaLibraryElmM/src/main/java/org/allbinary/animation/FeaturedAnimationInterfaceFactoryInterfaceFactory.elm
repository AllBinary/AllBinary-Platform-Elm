module Org.Allbinary.Animation.FeaturedAnimationInterfaceFactoryInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Game.Resource.FeaturedResourceFactory as FeaturedResourceFactory
import Org.Allbinary.Game.Configuration.GameConfigurationCentral as GameConfigurationCentral
import Org.Allbinary.Animation.NullAnimationFactory as NullAnimationFactory
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Graphics.Rectangle as Rectangle
import Org.Allbinary.Graphics.RectangleFactory as RectangleFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "FeaturedAnimationInterfaceFactoryInterfaceFactory"


jchain : List String
jchain =
    [ "FeaturedAnimationInterfaceFactoryInterfaceFactory" ]
        ++ FeaturedResourceFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    FeaturedResourceFactory.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getRectangle_1", jm_getRectangle_1 )
        , ( "getRectangleXY_3", jm_getRectangleXY_3 )
        , ( "getProcedural_1", jm_getProcedural_1 )
        , ( "get_1", jm_get_1 )
        , ( "getBasicAnimationInterfaceFactoryInstance_1", jm_getBasicAnimationInterfaceFactoryInstance_1 ) ]
        FeaturedResourceFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FeaturedAnimationInterfaceFactoryInterfaceFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getRectangle_1", jm_getRectangle_1 ), ( "jm_getRectangleXY_3", jm_getRectangleXY_3 ), ( "jm_getProcedural_1", jm_getProcedural_1 ), ( "jm_get_1", jm_get_1 ), ( "jm_getBasicAnimationInterfaceFactoryInstance_1", jm_getBasicAnimationInterfaceFactoryInstance_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_INSTANCE", jstatic_INSTANCE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_INSTANCE : JR.M
jstatic_INSTANCE s =
    JR.static "FeaturedAnimationInterfaceFactoryInterfaceFactory" jclinit "INSTANCE"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect FeaturedResourceFactory.jinit_0 JR.this []),
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


jm_getRectangle_1 : JR.Method
jm_getRectangle_1 jheap jthis jargs =
    JR.method [ ( "resource", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getRectangleXY_3" JR.this [ (JR.local "resource"), (JR.int 0), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getRectangleXY_3 : JR.Method
jm_getRectangleXY_3 jheap jthis jargs =
    JR.method [ ( "resource", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.declare "pointFactory" "" (JR.callStatic PointFactory.jm_getInstance_0 []), 
                    JR.declare "list" "" (JR.invoke "getList_0" JR.this []), 
                    JR.declare "scale" "I" (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.field "SCALE" (JR.callStatic GameConfigurationCentral.jm_getInstance_0 [])) []) []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.invoke "getList_0" JR.this []) []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68704 -> (JR.setLocal "index" "I" (JR.lit jwN68704))) JR.increment) ]) (JR.run [ 
                        JR.declare "featureInterface" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")), 
                        JR.ifElse (JR.invoke "isFeature_0" (JR.local "featureInterface") []) (JR.run [ 
                            JR.declare "rectangle" "" (JR.invoke "getRectangle_1" (JR.local "featureInterface") [ (JR.local "resource") ]), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "rectangle") RectangleFactory.jstatic_SINGLETON) (JR.run [ 
                                JR.return (JR.new Rectangle.jnew_3 [ (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.local "x"), (JR.local "y") ]), ((JR.map2 JR.shr ((JR.map2 JR.mul (JR.invoke "getWidth_0" (JR.local "rectangle") []) (JR.local "scale"))) (JR.int 1))), ((JR.map2 JR.shr ((JR.map2 JR.mul (JR.invoke "getHeight_0" (JR.local "rectangle") []) (JR.local "scale"))) (JR.int 1))) ]) ]) identity ]) identity ]) ], 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "No rectangle available for current feature selection or Resource: ") ]) [ (JR.local "resource") ]) []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getProcedural_1 : JR.Method
jm_getProcedural_1 jheap jthis jargs =
    JR.method [ ( "resource", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getBasicAnimationInterfaceFactoryInstance_1" JR.this [ (JR.local "resource") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_get_1 : JR.Method
jm_get_1 jheap jthis jargs =
    JR.method [ ( "resource", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getBasicAnimationInterfaceFactoryInstance_1" JR.this [ (JR.local "resource") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicAnimationInterfaceFactoryInstance_1 : JR.Method
jm_getBasicAnimationInterfaceFactoryInstance_1 jheap jthis jargs =
    JR.method [ ( "resource", "" ) ] ""
        (JR.run [ 
                    JR.declare "list" "" (JR.invoke "getList_0" JR.this []), 
                    JR.declare "resourceTypeAvailableList" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.invoke "getList_0" JR.this []) []), 
                    JR.declare "featureInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "animationInterfaceFactoryInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69559 -> (JR.setLocal "index" "I" (JR.lit jwN69559))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "featureInterface" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                        JR.ifElse (JR.invoke "isFeature_0" (JR.local "featureInterface") []) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "resourceTypeAvailableList") [ (JR.local "featureInterface") ]), 
                            JR.exec (JR.setLocal "animationInterfaceFactoryInterface" "" (JR.invoke "getBasicAnimationInterfaceFactoryInstance_1" (JR.local "featureInterface") [ (JR.local "resource") ])), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "animationInterfaceFactoryInterface") NullAnimationFactory.jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY) (JR.run [ 
                                JR.return (JR.local "animationInterfaceFactoryInterface") ]) identity ]) identity ]) ], 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "size_0" (JR.local "resourceTypeAvailableList") []) (JR.int 0)) (JR.run [ 
                        JR.declare "NO_ANIMATION_AVAILABLE_FROM" "" (JR.str "No animation available from: "), 
                        JR.declare "FOR_FACTORIES" "" (JR.str " factories: "), 
                        JR.declare "FOR_RESOURCE" "" (JR.str " for Resource: "), 
                        JR.declare "HAS_KEY" "" (JR.str " has: "), 
                        JR.declare "RESOURCES_LABEL" "" (JR.str " resources "), 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "NO_ANIMATION_AVAILABLE_FROM") ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "size_0" (JR.local "resourceTypeAvailableList") []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "FORWARD_SLASH" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "size") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "FOR_FACTORIES") ]), 
                        JR.declare "size2" "I" (JR.invoke "size_0" (JR.local "resourceTypeAvailableList") []), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size2")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70698 -> (JR.setLocal "index" "I" (JR.lit jwN70698))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.invoke "get_1" (JR.local "resourceTypeAvailableList") [ (JR.local "index") ]) []) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) ]) ], 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "FOR_RESOURCE") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "resource") ]), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN71132 -> (JR.setLocal "index" "I" (JR.lit jwN71132))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "NEW_LINE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                            JR.exec (JR.setLocal "featureInterface" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                            JR.ifElse (JR.invoke "isFeature_0" (JR.local "featureInterface") []) (JR.run [ 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "featureInterface") ]) ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "HAS_KEY") ]), 
                                JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "size_0" (JR.invoke "getHashtable_0" (JR.local "featureInterface") []) []) ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "RESOURCES_LABEL") ]) ]) identity ]) ], 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.invoke "toString_0" (JR.local "stringBuffer") []) ]) ]) (JR.run [ 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69855 -> (JR.setLocal "index" "I" (JR.lit jwN69855))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "featureInterface" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.local "featureInterface") []) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) ]) ], 
                        JR.declare "result" "" (JR.invoke "toString_0" (JR.local "stringBuffer") []), 
                        JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "No feature resource type available for Resource: ") ]) [ (JR.local "resource") ]) [ (JR.str " Resource Factories Available: ") ]) [ (JR.local "result") ]) []) ]) ]) ])
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

