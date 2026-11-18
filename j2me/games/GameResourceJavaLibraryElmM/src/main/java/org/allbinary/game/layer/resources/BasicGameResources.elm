module Org.Allbinary.Game.Layer.Resources.BasicGameResources exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.resources
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Configuration.GameConfigurationCentral as GameConfigurationCentral
import Org.Allbinary.Game.Layer.Resources.GameGraphicsResourceUtil as GameGraphicsResourceUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "BasicGameResources"


jchain : List String
jchain =
    [ "BasicGameResources" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "RESOURCE", JR.defaultOf "" ), ( "RESOURCE_DESTROY", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_2", jm_init_2 )
        , ( "append_2", jm_append_2 )
        , ( "getString_0", jm_getString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicGameResources"
        [ ( "jm_init_2", jm_init_2 ), ( "jm_append_2", jm_append_2 ), ( "jm_getString_0", jm_getString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_stringBuffer", jstatic_stringBuffer ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_stringBuffer : JR.M
jstatic_stringBuffer s =
    JR.static "BasicGameResources" jclinit "stringBuffer"
        (JR.new StringMaker.jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "RESOURCE" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "RESOURCE_DESTROY" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "ROOT", "" ), ( "SIZE", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "scale" "I" (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.field "SCALE" (JR.callStatic GameConfigurationCentral.jm_getInstance_0 [])) []) []), 
                        JR.ifElse (JR.and (JR.map2 JR.greater (JR.local "scale") (JR.int 1)) (JR.map2 JR.less (JR.map2 JR.sub (JR.local "scale") (JR.int 1)) (JR.alength (JR.local "SIZE")))) (JR.run [ 
                            JR.exec (JR.invoke "append_2" JR.this [ (JR.local "ROOT"), (JR.aget (JR.local "SIZE") (JR.map2 JR.sub (JR.local "scale") (JR.int 1))) ]) ]) (JR.run [ 
                            JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Invalid Value: ") ]) [ (JR.local "scale") ]) []) ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "INIT" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_append_2 : JR.Method
jm_append_2 jheap jthis jargs =
    JR.method [ ( "ROOT", "" ), ( "sizeString", "" ) ] ""
        (JR.run [ 
                    JR.declare "DESTROY" "" (JR.str "_destroy"), 
                    JR.declare "string" "" (JR.invoke "getString_0" JR.this []), 
                    JR.exec (JR.invoke "delete_2" jstatic_stringBuffer [ (JR.int 0), (JR.invoke "length_0" jstatic_stringBuffer []) ]), 
                    JR.exec (JR.invoke "append_1" jstatic_stringBuffer [ (JR.local "ROOT") ]), 
                    JR.exec (JR.invoke "append_1" jstatic_stringBuffer [ (JR.local "string") ]), 
                    JR.exec (JR.invoke "append_1" jstatic_stringBuffer [ (JR.local "sizeString") ]), 
                    JR.exec (JR.setField "RESOURCE" "" JR.this (JR.invoke "toString_0" jstatic_stringBuffer [])), 
                    JR.exec (JR.invoke "delete_2" jstatic_stringBuffer [ (JR.int 0), (JR.invoke "length_0" jstatic_stringBuffer []) ]), 
                    JR.exec (JR.invoke "append_1" jstatic_stringBuffer [ (JR.local "ROOT") ]), 
                    JR.exec (JR.invoke "append_1" jstatic_stringBuffer [ (JR.local "DESTROY") ]), 
                    JR.exec (JR.invoke "append_1" jstatic_stringBuffer [ (JR.local "string") ]), 
                    JR.exec (JR.invoke "append_1" jstatic_stringBuffer [ (JR.local "sizeString") ]), 
                    JR.exec (JR.setField "RESOURCE_DESTROY" "" JR.this (JR.invoke "toString_0" jstatic_stringBuffer [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getString_0 : JR.Method
jm_getString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getName_0" (JR.callStatic GameGraphicsResourceUtil.jm_getInstance_0 []) []) ])
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

