module Org.Allbinary.DisposalUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary
-}

import JR



jclass : String
jclass =
    "DisposalUtil"


jchain : List String
jchain =
    [ "DisposalUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "disposeImage_1", jm_disposeImage_1 )
        , ( "disposeResource_1", jm_disposeResource_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DisposalUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_disposeImage_1", jm_disposeImage_1 ), ( "jm_disposeResource_1", jm_disposeResource_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "DisposalUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_disposeImage_1 : JR.Method
jm_disposeImage_1 jheap jthis jargs =
    JR.method [ ( "image", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_disposeResource_1 : JR.Method
jm_disposeResource_1 jheap jthis jargs =
    JR.method [ ( "resource", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isDisposed_0" (JR.local "resource") [])) (JR.run [ 
                        JR.exec (JR.invoke "dispose_0" (JR.local "resource") []) ]) identity ])
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

