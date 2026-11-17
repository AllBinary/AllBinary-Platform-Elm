module StupidTimer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.time
-}

import JR
import CommonStrings
import LogUtil
import NullUtil
import PreLogUtil
import StringMaker
import StringUtil
import ThreadObjectUtil


jclass : String
jclass =
    "StupidTimer"


jchain : List String
jchain =
    [ "StupidTimer" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "nullUtil", JR.defaultOf "" ), ( "threadObjectUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "visitBool_1", jm_visitBool_1 )
        , ( "visit_2", jm_visit_2 )
        , ( "stopWaiting_0", jm_stopWaiting_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StupidTimer"
        [ ( "jm_visitBool_1", jm_visitBool_1 ), ( "jm_visit_2", jm_visit_2 ), ( "jm_stopWaiting_0", jm_stopWaiting_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "nullUtil" "" JR.this (JR.callStatic NullUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "threadObjectUtil" "" JR.this (JR.callStatic ThreadObjectUtil.jm_getInstance_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_visitBool_1 : JR.Method
jm_visitBool_1 jheap jthis jargs =
    JR.method [ ( "visitorInterface", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "result" "" (JR.invoke "visit_1" (JR.local "visitorInterface") [ (JR.field "NULL_OBJECT" (JR.thisField "nullUtil")) ]), 
                    JR.declare "result2" "Z" (JR.invoke "booleanValue_0" (JR.local "result") []), 
                    JR.return (JR.local "result2") ])
        (jregister jheap)
        jthis
        jargs


jm_visit_2 : JR.Method
jm_visit_2 jheap jthis jargs =
    JR.method [ ( "visitorInterface", "" ), ( "timeDelayHelper", "" ) ] ""
        (JR.run [ 
                    JR.declare "tookTooLong" "Z" (JR.bool False), 
                    JR.declare "WAITING_FOR" "" (JR.str "Waiting for: "), 
                    JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.local "WAITING_FOR") ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "visitorInterface") ]) ]) []), JR.this, (JR.field "VISIT" (JR.thisField "commonStrings")) ]), 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.while (JR.invoke "visitBool_1" JR.this [ (JR.local "visitorInterface") ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.map2 JR.rem (JR.local "index") (JR.int 10)) (JR.int 0)) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.local "WAITING_FOR") ]) [ (JR.local "index") ]) []), JR.this, (JR.field "VISIT" (JR.thisField "commonStrings")) ]) ]) identity, 
                        JR.exec (JR.postUpdate (JR.local "index") (\jwN67620 -> (JR.setLocal "index" "I" (JR.lit jwN67620))) JR.increment), 
                        (JR.run [ 
                            JR.exec (JR.invoke "waitObjectFor_2" (JR.thisField "threadObjectUtil") [ JR.this, (JR.int 1800) ]) ]), 
                        JR.ifElse (JR.invoke "isTimeTNT_0" (JR.local "timeDelayHelper") []) (JR.run [ 
                            JR.exec (JR.setLocal "tookTooLong" "Z" (JR.bool True)), 
                            JR.break ]) identity ]), 
                    JR.ifElse (JR.local "tookTooLong") (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "VISIT" (JR.thisField "commonStrings")), (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Took Too Long: ") ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "visitorInterface") ]) ]) []) ]) ]) ]) (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.local "timeDelayHelper") []), JR.this, (JR.field "VISIT" (JR.thisField "commonStrings")) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_stopWaiting_0 : JR.Method
jm_stopWaiting_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    (JR.run [ 
                        JR.exec (JR.invoke "notifyObject_1" (JR.thisField "threadObjectUtil") [ JR.this ]) ]) ])
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

