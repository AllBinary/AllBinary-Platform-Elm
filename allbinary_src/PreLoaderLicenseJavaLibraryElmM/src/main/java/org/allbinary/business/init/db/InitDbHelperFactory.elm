module Org.Allbinary.Business.Init.Db.InitDbHelperFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.init.db
-}

import JR
import Org.Allbinary.Logic.System.Loader.AbeFactory as AbeFactory


jclass : String
jclass =
    "InitDbHelperFactory"


jchain : List String
jchain =
    [ "InitDbHelperFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_2", jm_getInstance_2 )
        , ( "getInstance_1", jm_getInstance_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InitDbHelperFactory"
        [ ( "jm_getInstance_2", jm_getInstance_2 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_CLASSNAME", jstatic_CLASSNAME ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_CLASSNAME : JR.M
jstatic_CLASSNAME s =
    JR.static "InitDbHelperFactory" jclinit "CLASSNAME"
        (JR.str "org.allbinary.business.installer.InitDbCrypted")
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_2 : JR.Method
jm_getInstance_2 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "databaseConnectionInfoInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "params" "" (JR.newArray "" [ (JR.int 1) ]), 
                    JR.declare "classes" "" (JR.newArray "" [ (JR.int 1) ]), 
                    JR.exec (JR.andThen (JR.local "classes") (\jaN66601 -> JR.andThen (JR.int 0) (\jiN66601 -> (JR.aset (JR.lit jaN66601) (JR.lit jiN66601) (JR.lit (JR.JClass "DatabaseConnectionInfoInterface")))))), 
                    JR.exec (JR.andThen (JR.local "params") (\jaN66642 -> JR.andThen (JR.int 0) (\jiN66642 -> (JR.aset (JR.lit jaN66642) (JR.lit jiN66642) (JR.local "databaseConnectionInfoInterface"))))), 
                    JR.declare "anyType" "" (JR.invoke "getInstance_4" (JR.callStatic AbeFactory.jm_getInstance_0 []) [ (JR.local "abeClientInformation"), jstatic_CLASSNAME, (JR.local "classes"), (JR.local "params") ]), 
                    JR.return (JR.local "anyType") ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.declare "anyType" "" (JR.invoke "getInstance_4" (JR.callStatic AbeFactory.jm_getInstance_0 []) [ (JR.local "abeClientInformation"), jstatic_CLASSNAME, JR.null, JR.null ]), 
                    JR.return (JR.local "anyType") ])
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

