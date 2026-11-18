module Org.Allbinary.Business.Advertisement.AdvertisementProcessorInterface exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.advertisement
-}

import JR



jclass : String
jclass =
    "AdvertisementProcessorInterface"


jchain : List String
jchain =
    [ "AdvertisementProcessorInterface" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "process_0", jm_process_0 )
        , ( "start_0", jm_start_0 )
        , ( "stop_0", jm_stop_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AdvertisementProcessorInterface"
        [ ( "jm_process_0", jm_process_0 ), ( "jm_start_0", jm_start_0 ), ( "jm_stop_0", jm_stop_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_process_0 : JR.Method
jm_process_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_start_0 : JR.Method
jm_start_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_stop_0 : JR.Method
jm_stop_0 jheap jthis jargs =
    JR.method [] ""
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

