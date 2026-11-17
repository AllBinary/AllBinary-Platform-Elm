module BasicUserRoleFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.user.role
-}

import JR
import BasicUserRole


jclass : String
jclass =
    "BasicUserRoleFactory"


jchain : List String
jchain =
    [ "BasicUserRoleFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "INACTIVITYTIMEOUT", JR.defaultOf "J" ), ( "CUSTOMERTIMEOUT", JR.defaultOf "J" ), ( "CUSTOMERMAXSESSIONTIME", JR.defaultOf "J" ), ( "MAXSESSIONTIME", JR.defaultOf "J" ), ( "INSTALLER", JR.defaultOf "" ), ( "ADMINISTRATOR", JR.defaultOf "" ), ( "CUSTOMER", JR.defaultOf "" ), ( "SUBSCRIBERCUSTOMER", JR.defaultOf "" ), ( "WHOLESALECUSTOMER", JR.defaultOf "" ), ( "STOREMANAGER", JR.defaultOf "" ), ( "PRODUCTMANAGER", JR.defaultOf "" ), ( "CUSTOMERMANAGER", JR.defaultOf "" ), ( "PAYMENTMANAGER", JR.defaultOf "" ), ( "ORDERMANAGER", JR.defaultOf "" ), ( "WEBMANAGER", JR.defaultOf "" ), ( "REVIEWER", JR.defaultOf "" ), ( "SHIPPING", JR.defaultOf "" ), ( "ADJUSTER", JR.defaultOf "" ), ( "WORKFLOWEDITOR", JR.defaultOf "" ), ( "WIZARD", JR.defaultOf "" ), ( "VIEWEDITOR", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicUserRoleFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "BasicUserRoleFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "INACTIVITYTIMEOUT" "J" JR.this (JR.long 360000000)),
                JR.exec (JR.setField "CUSTOMERTIMEOUT" "J" JR.this (JR.long 360000000)),
                JR.exec (JR.setField "CUSTOMERMAXSESSIONTIME" "J" JR.this (JR.long 360000000)),
                JR.exec (JR.setField "MAXSESSIONTIME" "J" JR.this (JR.long 360000000)),
                JR.exec (JR.setField "INSTALLER" "" JR.this (JR.new BasicUserRole.jnew_4 [ (JR.str "Installer"), (JR.int 16), (JR.thisField "MAXSESSIONTIME"), (JR.thisField "INACTIVITYTIMEOUT") ])),
                JR.exec (JR.setField "ADMINISTRATOR" "" JR.this (JR.new BasicUserRole.jnew_4 [ (JR.str "Administrator"), (JR.int 0), (JR.thisField "MAXSESSIONTIME"), (JR.thisField "INACTIVITYTIMEOUT") ])),
                JR.exec (JR.setField "CUSTOMER" "" JR.this (JR.new BasicUserRole.jnew_5 [ (JR.str "CustomerUser"), (JR.str "Customer User"), (JR.int 1), (JR.thisField "CUSTOMERTIMEOUT"), (JR.thisField "CUSTOMERMAXSESSIONTIME") ])),
                JR.exec (JR.setField "SUBSCRIBERCUSTOMER" "" JR.this (JR.new BasicUserRole.jnew_5 [ (JR.str "SubscriberUser"), (JR.str "Subscriber User"), (JR.int 2), (JR.thisField "CUSTOMERTIMEOUT"), (JR.thisField "CUSTOMERMAXSESSIONTIME") ])),
                JR.exec (JR.setField "WHOLESALECUSTOMER" "" JR.this (JR.new BasicUserRole.jnew_5 [ (JR.str "WholesaleUser"), (JR.str "Wholesale User"), (JR.int 3), (JR.thisField "CUSTOMERTIMEOUT"), (JR.thisField "CUSTOMERMAXSESSIONTIME") ])),
                JR.exec (JR.setField "STOREMANAGER" "" JR.this (JR.new BasicUserRole.jnew_5 [ (JR.str "StoreManager"), (JR.str "Store Manager"), (JR.int 4), (JR.thisField "MAXSESSIONTIME"), (JR.thisField "INACTIVITYTIMEOUT") ])),
                JR.exec (JR.setField "PRODUCTMANAGER" "" JR.this (JR.new BasicUserRole.jnew_5 [ (JR.str "ProductManager"), (JR.str "Product Manager"), (JR.int 5), (JR.thisField "MAXSESSIONTIME"), (JR.thisField "INACTIVITYTIMEOUT") ])),
                JR.exec (JR.setField "CUSTOMERMANAGER" "" JR.this (JR.new BasicUserRole.jnew_5 [ (JR.str "UserManager"), (JR.str "User Manager"), (JR.int 6), (JR.thisField "MAXSESSIONTIME"), (JR.thisField "INACTIVITYTIMEOUT") ])),
                JR.exec (JR.setField "PAYMENTMANAGER" "" JR.this (JR.new BasicUserRole.jnew_5 [ (JR.str "PaymentManager"), (JR.str "Payment Manager"), (JR.int 7), (JR.thisField "MAXSESSIONTIME"), (JR.thisField "INACTIVITYTIMEOUT") ])),
                JR.exec (JR.setField "ORDERMANAGER" "" JR.this (JR.new BasicUserRole.jnew_5 [ (JR.str "OrderManager"), (JR.str "Order Manager"), (JR.int 8), (JR.thisField "MAXSESSIONTIME"), (JR.thisField "INACTIVITYTIMEOUT") ])),
                JR.exec (JR.setField "WEBMANAGER" "" JR.this (JR.new BasicUserRole.jnew_5 [ (JR.str "WebManager"), (JR.str "Web Manager"), (JR.int 9), (JR.thisField "MAXSESSIONTIME"), (JR.thisField "INACTIVITYTIMEOUT") ])),
                JR.exec (JR.setField "REVIEWER" "" JR.this (JR.new BasicUserRole.jnew_4 [ (JR.str "Reviewer"), (JR.int 10), (JR.thisField "MAXSESSIONTIME"), (JR.thisField "INACTIVITYTIMEOUT") ])),
                JR.exec (JR.setField "SHIPPING" "" JR.this (JR.new BasicUserRole.jnew_4 [ (JR.str "Shipping"), (JR.int 11), (JR.thisField "MAXSESSIONTIME"), (JR.thisField "INACTIVITYTIMEOUT") ])),
                JR.exec (JR.setField "ADJUSTER" "" JR.this (JR.new BasicUserRole.jnew_4 [ (JR.str "Adjuster"), (JR.int 12), (JR.thisField "MAXSESSIONTIME"), (JR.thisField "INACTIVITYTIMEOUT") ])),
                JR.exec (JR.setField "WORKFLOWEDITOR" "" JR.this (JR.new BasicUserRole.jnew_5 [ (JR.str "WorkFlowEditor"), (JR.str "WorkFlow Editor"), (JR.int 13), (JR.thisField "MAXSESSIONTIME"), (JR.thisField "INACTIVITYTIMEOUT") ])),
                JR.exec (JR.setField "WIZARD" "" JR.this (JR.new BasicUserRole.jnew_5 [ (JR.str "WizardUser"), (JR.str "Wizard User"), (JR.int 14), (JR.thisField "MAXSESSIONTIME"), (JR.thisField "INACTIVITYTIMEOUT") ])),
                JR.exec (JR.setField "VIEWEDITOR" "" JR.this (JR.new BasicUserRole.jnew_5 [ (JR.str "ViewEditor"), (JR.str "View Editor"), (JR.int 15), (JR.thisField "MAXSESSIONTIME"), (JR.thisField "INACTIVITYTIMEOUT") ])),
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

