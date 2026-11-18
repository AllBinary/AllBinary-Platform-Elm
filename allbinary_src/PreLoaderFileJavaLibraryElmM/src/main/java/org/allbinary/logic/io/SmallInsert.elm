module Org.Allbinary.Logic.Io.SmallInsert exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFileSystem as AbFileSystem
import Org.Allbinary.String.CommonStrings as CommonStrings
import JDataOutputStream
import JSystem
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "SmallInsert"


jchain : List String
jchain =
    [ "SmallInsert" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "fileName", JR.defaultOf "" ), ( "string", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "atBeginning_1", jm_atBeginning_1 )
        , ( "after_2", jm_after_2 )
        , ( "atEnd_1", jm_atEnd_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SmallInsert"
        [ ( "jm_atBeginning_1", jm_atBeginning_1 ), ( "jm_after_2", jm_after_2 ), ( "jm_atEnd_1", jm_atEnd_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
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


jm_atBeginning_1 : JR.Method
jm_atBeginning_1 jheap jthis jargs =
    JR.method [ ( "text", "" ) ] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "idFile" "" (JR.new (JR.namedMethod "FileOutputStream.jnew_1") [ (JR.thisField "fileName") ]), 
                        JR.declare "idOutData" "" (JR.new JDataOutputStream.jnew_1 [ (JR.local "idFile") ]), 
                        JR.exec (JR.invoke "writeBytes_1" (JR.local "idOutData") [ (JR.concat (JR.local "text") (JR.thisField "string")) ]), 
                        JR.return (JR.bool True) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "IDLOGGING" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "insertAtBeginning"), (JR.local "e") ]) ]) identity, 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_after_2 : JR.Method
jm_after_2 jheap jthis jargs =
    JR.method [ ( "text", "" ), ( "after", "" ) ] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "index" "I" (JR.invoke "indexOf_1" (JR.thisField "string") [ (JR.local "after") ]), 
                        JR.ifElse (JR.map2 JR.less (JR.local "index") (JR.int 0)) (JR.run [ 
                            JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.concat (JR.concat (JR.concat (JR.str "No such start: ") (JR.local "after")) (JR.str " in: ")) (JR.thisField "string")) ]), 
                            JR.return (JR.bool False) ]) identity, 
                        JR.exec (JR.setLocal "index" "I" (JR.map2 JR.add (JR.local "index") (JR.invoke "length_0" (JR.local "after") []))), 
                        JR.declare "start" "" (JR.invoke "substring_2" (JR.thisField "string") [ (JR.int 0), (JR.local "index") ]), 
                        JR.declare "end" "" (JR.invoke "substring_2" (JR.thisField "string") [ (JR.map2 JR.add (JR.local "index") (JR.int 1)), (JR.invoke "length_0" (JR.thisField "string") []) ]), 
                        JR.declare "idFile" "" (JR.new (JR.namedMethod "FileOutputStream.jnew_1") [ (JR.thisField "fileName") ]), 
                        JR.declare "idOutData" "" (JR.new JDataOutputStream.jnew_1 [ (JR.local "idFile") ]), 
                        JR.exec (JR.invoke "writeBytes_1" (JR.local "idOutData") [ (JR.concat (JR.concat (JR.local "start") (JR.local "text")) (JR.local "end")) ]), 
                        JR.exec (JR.invoke "close_0" (JR.local "idOutData") []), 
                        JR.exec (JR.invoke "close_0" (JR.local "idFile") []), 
                        JR.return (JR.bool True) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "IDLOGGING" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "after"), (JR.local "e") ]) ]) identity, 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_atEnd_1 : JR.Method
jm_atEnd_1 jheap jthis jargs =
    JR.method [ ( "text", "" ) ] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "idFile" "" (JR.new (JR.namedMethod "FileOutputStream.jnew_1") [ (JR.thisField "fileName") ]), 
                        JR.declare "idOutData" "" (JR.new JDataOutputStream.jnew_1 [ (JR.local "idFile") ]), 
                        JR.exec (JR.invoke "writeBytes_1" (JR.local "idOutData") [ (JR.concat (JR.thisField "string") (JR.local "text")) ]), 
                        JR.return (JR.bool True) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "IDLOGGING" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "insertAtEnd"), (JR.local "e") ]) ]) identity, 
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

