module Org.Allbinary.Media.Audio.PlayerQueue exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Media.Audio.NoSound as NoSound
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "PlayerQueue"


jchain : List String
jchain =
    [ "PlayerQueue" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "commonStrings", JR.defaultOf "" ), ( "list", JR.defaultOf "" ), ( "max", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "add_1", jm_add_1 )
        , ( "process_0", jm_process_0 )
        , ( "clear_0", jm_clear_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlayerQueue"
        [ ( "jm_add_1", jm_add_1 ), ( "jm_process_0", jm_process_0 ), ( "jm_clear_0", jm_clear_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_TOTAL", jstatic_TOTAL ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_TOTAL : JR.M
jstatic_TOTAL s =
    JR.static "PlayerQueue" jclinit "TOTAL"
        (JR.str "Sounds In Queue: ")
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "max", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "max" "I" JR.this (JR.local "max")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "sound", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" (JR.thisField "list") [ (JR.local "sound") ])) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "sound") ]) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "ADD" (JR.thisField "commonStrings")) ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_process_0 : JR.Method
jm_process_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.declare "sound" "" (JR.callStatic NoSound.jm_getInstance_0 []), 
                    JR.try (JR.run [ 
                        JR.declare "played" "Z" (JR.bool False), 
                        JR.ifElse (JR.map2 JR.greater (JR.invoke "size_0" (JR.thisField "list") []) (JR.int 0)) (JR.run [ 
                            JR.exec (JR.setLocal "sound" "" (JR.invoke "removeAt_1" (JR.thisField "list") [ (JR.int 0) ])), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "sound") JR.null) (JR.run [ 
                                JR.exec (JR.invoke "start_0" (JR.invoke "getPlayerP_0" (JR.local "sound") []) []) ]) identity, 
                            JR.while (JR.map2 JR.greater (JR.invoke "size_0" (JR.thisField "list") []) (JR.thisField "max")) (JR.run [ 
                                JR.exec (JR.invoke "removeAt_1" (JR.thisField "list") [ (JR.int 0) ]) ]), 
                            JR.exec (JR.setLocal "played" "Z" (JR.bool True)) ]) identity, 
                        JR.return (JR.local "played") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "resource" "" (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "sound") JR.null) (JR.run [ 
                            JR.exec (JR.setLocal "resource" "" (JR.invoke "getResource_0" (JR.local "sound") [])) ]) identity, 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "EXCEPTION_LABEL" (JR.thisField "commonStrings")) ]) [ (JR.local "resource") ]) []), JR.this, (JR.field "PROCESS" (JR.thisField "commonStrings")) ]), 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "list") []) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ jstatic_TOTAL ]) [ (JR.invoke "size_0" (JR.thisField "list") []) ]) []) ])
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

