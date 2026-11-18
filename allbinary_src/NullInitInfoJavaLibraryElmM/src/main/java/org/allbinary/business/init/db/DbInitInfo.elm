module Org.Allbinary.Business.Init.Db.DbInitInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.init.db
-}

import JR
import Org.Allbinary.Business.Init.Db.DbConnectionInfo as DbConnectionInfo
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil


jclass : String
jclass =
    "DbInitInfo"


jchain : List String
jchain =
    [ "DbInitInfo" ]
        ++ DbConnectionInfo.jchain


jfields : List ( String, JR.JValue )
jfields =
    DbConnectionInfo.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getUrl_0", jm_getUrl_0 )
        , ( "write_0", jm_write_0 )
        , ( "load_0", jm_load_0 )
        , ( "setHasRead_1", jm_setHasRead_1 ) ]
        DbConnectionInfo.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DbInitInfo"
        [ ( "jm_getUrl_0", jm_getUrl_0 ), ( "jm_write_0", jm_write_0 ), ( "jm_load_0", jm_load_0 ), ( "jm_setHasRead_1", jm_setHasRead_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "initFileName", "" ), ( "read", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect DbConnectionInfo.jinit_0 JR.this []),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getUrl_0 : JR.Method
jm_getUrl_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "url" "" (JR.callVia DbConnectionInfo.jvtable "getUrl_0" JR.this []), 
                    JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.concat (JR.str "Url: ") (JR.local "url")), JR.this, (JR.str "getUrl") ]), 
                    JR.return (JR.local "url") ])
        (jregister jheap)
        jthis
        jargs


jm_write_0 : JR.Method
jm_write_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_load_0 : JR.Method
jm_load_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setHasRead_1 : JR.Method
jm_setHasRead_1 jheap jthis jargs =
    JR.method [ ( "value", "Z" ) ] ""
        identity
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

