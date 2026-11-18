module Org.Allbinary.Logic.System.Security.Crypt.WeakCrypt exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.crypt
-}

import JR
import Org.Allbinary.Logic.System.Security.Crypt.Jcehelper.AbCrypt as AbCrypt
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.System.Security.Crypt.DatabaseEncoder as DatabaseEncoder
import Org.Allbinary.Logic.System.Security.Crypt.Jcehelper.KeySpecFactory as KeySpecFactory
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "WeakCrypt"


jchain : List String
jchain =
    [ "WeakCrypt" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "tsUtil", JR.defaultOf "" ), ( "abCrypt", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "encrypt_1", jm_encrypt_1 )
        , ( "decrypt_1", jm_decrypt_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "WeakCrypt"
        [ ( "jm_encrypt_1", jm_encrypt_1 ), ( "jm_decrypt_1", jm_decrypt_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_keys", jstatic_keys ), ( "jstatic_KEYMAX", jstatic_KEYMAX ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_keys : JR.M
jstatic_keys s =
    JR.static "WeakCrypt" jclinit "keys"
        (JR.arrayOf "" [ (JR.str "qwres6qewrupoi1132790jfahleavi89398"), (JR.str "143uk32lngf8675gt1tv9214uvt924ut9u9"), (JR.str "12kvjlvlkv11445v12951v512v9m51295v1"), (JR.str "gampipoiupg4g43y5u238tu2485u20u0932"), (JR.str "a93u5uu02s2d2g3259u4395u409u093u9vu"), (JR.str "nlkxzj90je3mln9l8l89qjf0j3v50j23r9j"), (JR.str "2lk5fn5j23nr8f0233vq35n23jn58vhy843"), (JR.str "9q24334m598t092tkn2iv0982456n425j9g"), (JR.str "5m9uvmt9436243m5v34g09d43i52ki35g99"), (JR.str "n123lr1iubiu2br32lv32rbu23b32ub2rlb"), (JR.str "va0u0iovji2ojpvj2oij22poiu4ov2uv28v"), (JR.str "bkk80gn2v9uc902340ut209pcup0u09utc9"), (JR.str "mn32m32neee23c42fn32nf3mf2n3fn2m3fm"), (JR.str "zcxpozo3423voizupovsijevnv3n33o33n3"), (JR.str "v0345324thv93h03893893vh893v8h3vhzz"), (JR.str "v8na898v8wyef9ty39yv98yaw39yeeyf8ye"), (JR.str "45zd36d34jg09434hfshp8uj9sy8s7cyr78"), (JR.str "b098yy0908vdvh983b2lb327980a76s5e5e"), (JR.str "v90y9v9p8y3r98pagsdgsagyr6y3985yhfh"), (JR.str "vblkzhhzp8yvzi8u4t9856456zy3rv8a388"), (JR.str "da7696023rgf28dssfa98asd879hg32hewe"), (JR.str "afo7d6ffkjb3jr3i34gb24ytuvu3jr3uryf"), (JR.str "4gijvqo8vq984hv984hj5j3511h832hf833") ])
        s


jstatic_KEYMAX : JR.M
jstatic_KEYMAX s =
    JR.static "WeakCrypt" jclinit "KEYMAX"
        (JR.alength jstatic_keys)
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "key", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "tsUtil" "" JR.this (JR.callStatic TsUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "abCrypt" "" JR.this (JR.new AbCrypt.jnew_1 [ (JR.field "DES" (JR.callStatic KeySpecFactory.jm_getInstance_0 [])) ])),
                identity,
                (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "init_1" (JR.thisField "abCrypt") [ (JR.aget jstatic_keys (JR.local "key")) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "SuperCrypt(key)"), (JR.local "e") ]) ]) ) ] identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_encrypt_1 : JR.Method
jm_encrypt_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "crypted" "" (JR.invoke "encrypt_1" (JR.thisField "abCrypt") [ (JR.invoke "getByteArray_1" (JR.thisField "tsUtil") [ (JR.local "value") ]) ]), 
                        JR.return (JR.callStatic DatabaseEncoder.jm_encode_1 [ (JR.local "crypted") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.str "Encrypt Failed"), JR.this, (JR.str "encrypt"), (JR.local "e") ]), 
                        JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_decrypt_1 : JR.Method
jm_decrypt_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "decrypted" "" (JR.invoke "decrypt_1" (JR.thisField "abCrypt") [ (JR.callStatic DatabaseEncoder.jm_decode_1 [ (JR.local "value") ]) ]), 
                        JR.return (JR.withState JR.newString [ (JR.local "decrypted") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.str "decrypt Failed"), JR.this, (JR.str "decrypt"), (JR.local "e") ]), 
                        JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) ) ] identity ])
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

