module Org.Allbinary.Business.Installer.DynamicInitDb exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.installer
-}

import JR
import Org.Allbinary.Business.Installer.InitDb as InitDb
import Org.Allbinary.Business.Init.Db.InitDbHelperFactory as InitDbHelperFactory


jclass : String
jclass =
    "DynamicInitDb"


jchain : List String
jchain =
    [ "DynamicInitDb" ]
        ++ InitDb.jchain


jfields : List ( String, JR.JValue )
jfields =
    InitDb.jfields ++ []


jvtable =
    JR.vtable
        []
        InitDb.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DynamicInitDb"
        [ ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect InitDb.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setHelper_1" JR.this [ (JR.callStatic InitDbHelperFactory.jm_getInstance_1 [ (JR.local "abeClientInformation") ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "databaseConnectionInfoInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect InitDb.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setHelper_1" JR.this [ (JR.callStatic InitDbHelperFactory.jm_getInstance_2 [ (JR.local "abeClientInformation"), (JR.local "databaseConnectionInfoInterface") ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

