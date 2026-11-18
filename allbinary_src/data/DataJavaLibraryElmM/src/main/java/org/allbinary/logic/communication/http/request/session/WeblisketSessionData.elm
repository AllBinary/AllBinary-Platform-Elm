module Org.Allbinary.Logic.Communication.Http.Request.Session.WeblisketSessionData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.http.request.session
-}

import JR



jclass : String
jclass =
    "WeblisketSessionData"


jchain : List String
jchain =
    [ "WeblisketSessionData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "WeblisketSessionData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_INVALIDATESESSION", jstatic_INVALIDATESESSION ), ( "jstatic_ATTEMPTS", jstatic_ATTEMPTS ), ( "jstatic_TIMEOUT", jstatic_TIMEOUT ), ( "jstatic_REMOVABLEUSERNAME", jstatic_REMOVABLEUSERNAME ), ( "jstatic_REMOVABLEPASSWORD", jstatic_REMOVABLEPASSWORD ), ( "jstatic_REMOVABLENEWPASSWORD", jstatic_REMOVABLENEWPASSWORD ), ( "jstatic_REMOVABLEREENTERNEWPASSWORD", jstatic_REMOVABLEREENTERNEWPASSWORD ), ( "jstatic_AUTHENTICATED", jstatic_AUTHENTICATED ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_INVALIDATESESSION : JR.M
jstatic_INVALIDATESESSION s =
    JR.static "WeblisketSessionData" jclinit "INVALIDATESESSION"
        (JR.str "SESSION_INVALIDATE_SESSION")
        s


jstatic_ATTEMPTS : JR.M
jstatic_ATTEMPTS s =
    JR.static "WeblisketSessionData" jclinit "ATTEMPTS"
        (JR.str "SESSION_ATTEMPTS")
        s


jstatic_TIMEOUT : JR.M
jstatic_TIMEOUT s =
    JR.static "WeblisketSessionData" jclinit "TIMEOUT"
        (JR.str "SESSION_TIMEOUT")
        s


jstatic_REMOVABLEUSERNAME : JR.M
jstatic_REMOVABLEUSERNAME s =
    JR.static "WeblisketSessionData" jclinit "REMOVABLEUSERNAME"
        (JR.str "SESSION_REMOVABLE_USER_NAME")
        s


jstatic_REMOVABLEPASSWORD : JR.M
jstatic_REMOVABLEPASSWORD s =
    JR.static "WeblisketSessionData" jclinit "REMOVABLEPASSWORD"
        (JR.str "SESSION_REMOVABLE_PASSWORD")
        s


jstatic_REMOVABLENEWPASSWORD : JR.M
jstatic_REMOVABLENEWPASSWORD s =
    JR.static "WeblisketSessionData" jclinit "REMOVABLENEWPASSWORD"
        (JR.str "SESSION_REMOVABLE_NEW_PASSWORD")
        s


jstatic_REMOVABLEREENTERNEWPASSWORD : JR.M
jstatic_REMOVABLEREENTERNEWPASSWORD s =
    JR.static "WeblisketSessionData" jclinit "REMOVABLEREENTERNEWPASSWORD"
        (JR.str "SESSION_REMOVABLE_REENTER_NEW_PASSWORD")
        s


jstatic_AUTHENTICATED : JR.M
jstatic_AUTHENTICATED s =
    JR.static "WeblisketSessionData" jclinit "AUTHENTICATED"
        (JR.str "SESSION_AUTHENTICATED")
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

