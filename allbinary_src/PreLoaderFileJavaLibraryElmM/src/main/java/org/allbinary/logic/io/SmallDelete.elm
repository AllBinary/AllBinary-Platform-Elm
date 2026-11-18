module Org.Allbinary.Logic.Io.SmallDelete exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFileSystem as AbFileSystem
import Org.Allbinary.String.CommonStrings as CommonStrings
import JDataOutputStream
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "SmallDelete"


jchain : List String
jchain =
    [ "SmallDelete" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "fileName", JR.defaultOf "" ), ( "string", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "deleteAtStart_2", jm_deleteAtStart_2 )
        , ( "deleteBetween_3", jm_deleteBetween_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SmallDelete"
        [ ( "jm_deleteAtStart_2", jm_deleteAtStart_2 ), ( "jm_deleteBetween_3", jm_deleteBetween_3 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "fileName", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "fileName" "" JR.this (JR.local "fileName")), 
                    JR.exec (JR.setField "string" "" JR.this (JR.invoke "readAsString_1" (JR.callStatic AbFileSystem.jm_getInstance_0 []) [ (JR.local "fileName") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_deleteAtStart_2 : JR.Method
jm_deleteAtStart_2 jheap jthis jargs =
    JR.method [ ( "start", "" ), ( "end", "" ) ] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "beginIndex" "I" (JR.lit (JR.defaultOf "I")),
                        JR.declare "endIndex" "I" (JR.lit (JR.defaultOf "I")), 
                        JR.exec (JR.setLocal "beginIndex" "I" (JR.invoke "indexOf_1" (JR.thisField "string") [ (JR.local "start") ])), 
                        JR.exec (JR.setLocal "endIndex" "I" (JR.invoke "indexOf_1" (JR.thisField "string") [ (JR.local "end") ])), 
                        JR.ifElse (JR.and (JR.and (JR.and (JR.and (JR.map2 JR.greater (JR.local "endIndex") (JR.local "beginIndex")) (JR.map2 JR.greaterEquals (JR.local "beginIndex") (JR.int 0))) (JR.map2 JR.greaterEquals (JR.local "endIndex") (JR.int 0))) (JR.map2 JR.less (JR.local "beginIndex") (JR.int 10))) (JR.map2 JR.less (JR.local "endIndex") (JR.int 525))) (JR.run [ 
                            JR.declare "text" "" (JR.invoke "substring_2" (JR.thisField "string") [ (JR.local "endIndex"), (JR.invoke "length_0" (JR.thisField "string") []) ]), 
                            JR.declare "idFile" "" (JR.new (JR.namedMethod "FileOutputStream.jnew_1") [ (JR.thisField "fileName") ]), 
                            JR.declare "idOutData" "" (JR.new JDataOutputStream.jnew_1 [ (JR.local "idFile") ]), 
                            JR.exec (JR.invoke "writeBytes_1" (JR.local "idOutData") [ (JR.local "text") ]), 
                            JR.return (JR.bool True) ]) identity, 
                        JR.return (JR.bool False) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "IDLOGGING" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "deleteAtStart"), (JR.local "e") ]) ]) identity, 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_deleteBetween_3 : JR.Method
jm_deleteBetween_3 jheap jthis jargs =
    JR.method [ ( "start", "" ), ( "end", "" ), ( "newText", "" ) ] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "beginIndex" "I" (JR.lit (JR.defaultOf "I")),
                        JR.declare "endIndex" "I" (JR.lit (JR.defaultOf "I")), 
                        JR.exec (JR.setLocal "beginIndex" "I" (JR.invoke "indexOf_1" (JR.thisField "string") [ (JR.local "start") ])), 
                        JR.exec (JR.setLocal "endIndex" "I" (JR.invoke "indexOf_1" (JR.thisField "string") [ (JR.local "end") ])), 
                        JR.ifElse (JR.and (JR.and (JR.and (JR.and (JR.map2 JR.greater (JR.local "endIndex") (JR.local "beginIndex")) (JR.map2 JR.greaterEquals (JR.local "beginIndex") (JR.int 0))) (JR.map2 JR.greaterEquals (JR.local "endIndex") (JR.int 0))) (JR.map2 JR.less (JR.local "beginIndex") (JR.int 50))) (JR.map2 JR.less (JR.local "endIndex") (JR.int 425))) (JR.run [ 
                            JR.declare "newStart" "" (JR.invoke "substring_2" (JR.thisField "string") [ (JR.int 0), (JR.local "beginIndex") ]), 
                            JR.declare "text" "" (JR.invoke "substring_2" (JR.thisField "string") [ (JR.map2 JR.add (JR.local "endIndex") (JR.invoke "length_0" (JR.local "end") [])), (JR.invoke "length_0" (JR.thisField "string") []) ]), 
                            JR.declare "idFile" "" (JR.new (JR.namedMethod "FileOutputStream.jnew_1") [ (JR.thisField "fileName") ]), 
                            JR.declare "idOutData" "" (JR.new JDataOutputStream.jnew_1 [ (JR.local "idFile") ]), 
                            JR.exec (JR.invoke "writeBytes_1" (JR.local "idOutData") [ (JR.concat (JR.concat (JR.local "newStart") (JR.local "newText")) (JR.local "text")) ]), 
                            JR.return (JR.bool True) ]) identity, 
                        JR.return (JR.bool False) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "IDLOGGING" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "deleteAtStart"), (JR.local "e") ]) ]) identity, 
                        JR.return (JR.bool False) ]) ) ] identity ])
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

