module Org.Allbinary.Business.Advertisement.AppNameLicensingAdConfiguration exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.advertisement
-}

import JR
import Org.Allbinary.Business.Advertisement.AdConfiguration as AdConfiguration
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "AppNameLicensingAdConfiguration"


jchain : List String
jchain =
    [ "AppNameLicensingAdConfiguration" ]
        ++ AdConfiguration.jchain


jfields : List ( String, JR.JValue )
jfields =
    AdConfiguration.jfields ++ []


jvtable =
    JR.vtable
        []
        AdConfiguration.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AppNameLicensingAdConfiguration"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect AdConfiguration.jinit_1 JR.this [ (JR.arrayOf "" [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

