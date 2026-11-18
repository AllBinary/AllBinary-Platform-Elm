module Org.Allbinary.Business.Advertisement.GameAdStateFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.advertisement
-}

import JR
import Org.Allbinary.Business.Advertisement.AppNameLicensingAdConfiguration as AppNameLicensingAdConfiguration
import Org.Allbinary.Game.GameAdState as GameAdState
import Org.Allbinary.Business.Advertisement.GameAdStateFactoryInterface as GameAdStateFactoryInterface


jclass : String
jclass =
    "GameAdStateFactory"


jchain : List String
jchain =
    [ "GameAdStateFactory" ]
        ++ GameAdStateFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "gameAdStateArray", JR.defaultOf "" ), ( "gameAdState", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getCurrentInstance_0", jm_getCurrentInstance_0 )
        , ( "getInstanceForApp_1", jm_getInstanceForApp_1 )
        , ( "isEnabled_0", jm_isEnabled_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameAdStateFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getCurrentInstance_0", jm_getCurrentInstance_0 ), ( "jm_getInstanceForApp_1", jm_getInstanceForApp_1 ), ( "jm_isEnabled_0", jm_isEnabled_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameAdStateFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "gameAdStateArray" "" JR.this (JR.arrayOf "" [ (JR.new GameAdState.jnew_1 [ (JR.new AppNameLicensingAdConfiguration.jnew_0 []) ]) ])),
                JR.exec (JR.setField "gameAdState" "" JR.this (JR.aget (JR.thisField "gameAdStateArray") (JR.int 0))),
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_getCurrentInstance_0 : JR.Method
jm_getCurrentInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameAdState") ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceForApp_1 : JR.Method
jm_getInstanceForApp_1 jheap jthis jargs =
    JR.method [ ( "softwareInformation", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "gameAdState" "" JR.this (JR.aget (JR.thisField "gameAdStateArray") (JR.int 0))), 
                    JR.return (JR.aget (JR.thisField "gameAdStateArray") (JR.int 0)) ])
        (jregister jheap)
        jthis
        jargs


jm_isEnabled_0 : JR.Method
jm_isEnabled_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
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

