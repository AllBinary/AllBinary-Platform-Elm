module Org.Allbinary.Business.Advertisement.Campaign.AdvertisementCampaignData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.advertisement.campaign
-}

import JR



jclass : String
jclass =
    "AdvertisementCampaignData"


jchain : List String
jchain =
    [ "AdvertisementCampaignData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NAME", JR.defaultOf "" ), ( "DESCRIPTION", JR.defaultOf "" ), ( "CONFIG", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AdvertisementCampaignData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AdvertisementCampaignData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NAME" "" JR.this (JR.str "ADVERTISEMENTCAMPAIGN_NAME")),
                JR.exec (JR.setField "DESCRIPTION" "" JR.this (JR.str "ADVERTISEMENTCAMPAIGN_DESCRIPTION")),
                JR.exec (JR.setField "CONFIG" "" JR.this (JR.str "ADVERTISEMENTCAMPAIGN_CONFIG")),
                identity,
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

