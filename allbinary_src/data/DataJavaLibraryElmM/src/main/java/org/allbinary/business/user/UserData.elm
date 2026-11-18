module Org.Allbinary.Business.User.UserData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user
-}

import JR



jclass : String
jclass =
    "UserData"


jchain : List String
jchain =
    [ "UserData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "UserData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_MAXLEN", jstatic_MAXLEN ), ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_USERNAME", jstatic_USERNAME ), ( "jstatic_PASSWORD", jstatic_PASSWORD ), ( "jstatic_PREFIXNAME", jstatic_PREFIXNAME ), ( "jstatic_FIRSTNAME", jstatic_FIRSTNAME ), ( "jstatic_LASTNAME", jstatic_LASTNAME ), ( "jstatic_MIDDLENAME", jstatic_MIDDLENAME ), ( "jstatic_SUFFIXNAME", jstatic_SUFFIXNAME ), ( "jstatic_COMPANY", jstatic_COMPANY ), ( "jstatic_POSITIONATCOMPANY", jstatic_POSITIONATCOMPANY ), ( "jstatic_MAINEMAIL", jstatic_MAINEMAIL ), ( "jstatic_SECONDARYEMAIL", jstatic_SECONDARYEMAIL ), ( "jstatic_HOMEPHONE", jstatic_HOMEPHONE ), ( "jstatic_CELLPHONE", jstatic_CELLPHONE ), ( "jstatic_WORKPHONE", jstatic_WORKPHONE ), ( "jstatic_OTHERCONTACT", jstatic_OTHERCONTACT ), ( "jstatic_ELECTRONICDEVICE", jstatic_ELECTRONICDEVICE ), ( "jstatic_FAX", jstatic_FAX ), ( "jstatic_SECRET", jstatic_SECRET ), ( "jstatic_PERMISSIONS", jstatic_PERMISSIONS ), ( "jstatic_CONFIGURATION", jstatic_CONFIGURATION ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_MAXLEN : JR.M
jstatic_MAXLEN s =
    JR.static "UserData" jclinit "MAXLEN"
        (JR.int 250)
        s


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "UserData" jclinit "NAME"
        (JR.str "USER_NAME")
        s


jstatic_USERNAME : JR.M
jstatic_USERNAME s =
    JR.static "UserData" jclinit "USERNAME"
        (JR.str "CUSTOMER_USER_NAME")
        s


jstatic_PASSWORD : JR.M
jstatic_PASSWORD s =
    JR.static "UserData" jclinit "PASSWORD"
        (JR.str "CUSTOMER_PASSWORD")
        s


jstatic_PREFIXNAME : JR.M
jstatic_PREFIXNAME s =
    JR.static "UserData" jclinit "PREFIXNAME"
        (JR.str "CUSTOMER_PREFIX_NAME")
        s


jstatic_FIRSTNAME : JR.M
jstatic_FIRSTNAME s =
    JR.static "UserData" jclinit "FIRSTNAME"
        (JR.str "CUSTOMER_FIRST_NAME")
        s


jstatic_LASTNAME : JR.M
jstatic_LASTNAME s =
    JR.static "UserData" jclinit "LASTNAME"
        (JR.str "CUSTOMER_LAST_NAME")
        s


jstatic_MIDDLENAME : JR.M
jstatic_MIDDLENAME s =
    JR.static "UserData" jclinit "MIDDLENAME"
        (JR.str "CUSTOMER_MIDDLE_NAME")
        s


jstatic_SUFFIXNAME : JR.M
jstatic_SUFFIXNAME s =
    JR.static "UserData" jclinit "SUFFIXNAME"
        (JR.str "CUSTOMER_SUFFIX_NAME")
        s


jstatic_COMPANY : JR.M
jstatic_COMPANY s =
    JR.static "UserData" jclinit "COMPANY"
        (JR.str "CUSTOMER_COMPANY")
        s


jstatic_POSITIONATCOMPANY : JR.M
jstatic_POSITIONATCOMPANY s =
    JR.static "UserData" jclinit "POSITIONATCOMPANY"
        (JR.str "CUSTOMER_POSITION_AT_COMPANY")
        s


jstatic_MAINEMAIL : JR.M
jstatic_MAINEMAIL s =
    JR.static "UserData" jclinit "MAINEMAIL"
        (JR.str "CUSTOMER_MAIN_EMAIL")
        s


jstatic_SECONDARYEMAIL : JR.M
jstatic_SECONDARYEMAIL s =
    JR.static "UserData" jclinit "SECONDARYEMAIL"
        (JR.str "CUSTOMER_SECONDARY_EMAIL")
        s


jstatic_HOMEPHONE : JR.M
jstatic_HOMEPHONE s =
    JR.static "UserData" jclinit "HOMEPHONE"
        (JR.str "CUSTOMER_HOME_PHONE")
        s


jstatic_CELLPHONE : JR.M
jstatic_CELLPHONE s =
    JR.static "UserData" jclinit "CELLPHONE"
        (JR.str "CUSTOMER_CELL_PHONE")
        s


jstatic_WORKPHONE : JR.M
jstatic_WORKPHONE s =
    JR.static "UserData" jclinit "WORKPHONE"
        (JR.str "CUSTOMER_WORK_PHONE")
        s


jstatic_OTHERCONTACT : JR.M
jstatic_OTHERCONTACT s =
    JR.static "UserData" jclinit "OTHERCONTACT"
        (JR.str "CUSTOMER_OTHER_CONTACT")
        s


jstatic_ELECTRONICDEVICE : JR.M
jstatic_ELECTRONICDEVICE s =
    JR.static "UserData" jclinit "ELECTRONICDEVICE"
        (JR.str "CUSTOMER_ELECTRONIC_DEVICE")
        s


jstatic_FAX : JR.M
jstatic_FAX s =
    JR.static "UserData" jclinit "FAX"
        (JR.str "CUSTOMER_FAX")
        s


jstatic_SECRET : JR.M
jstatic_SECRET s =
    JR.static "UserData" jclinit "SECRET"
        (JR.str "CUSTOMER_SECRET")
        s


jstatic_PERMISSIONS : JR.M
jstatic_PERMISSIONS s =
    JR.static "UserData" jclinit "PERMISSIONS"
        (JR.str "CUSTOMER_PERMISSIONS")
        s


jstatic_CONFIGURATION : JR.M
jstatic_CONFIGURATION s =
    JR.static "UserData" jclinit "CONFIGURATION"
        (JR.str "CUSTOMER_CONFIGURATION")
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

