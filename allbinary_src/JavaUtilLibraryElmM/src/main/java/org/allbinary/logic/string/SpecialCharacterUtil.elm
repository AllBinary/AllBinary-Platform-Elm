module Org.Allbinary.Logic.String.SpecialCharacterUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.string
-}

import JR
import Org.Allbinary.Logic.Io.Path.AbPathData as AbPathData
import Org.Allbinary.String.CommonPhoneStrings as CommonPhoneStrings
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.Math.MathData as MathData
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "SpecialCharacterUtil"


jchain : List String
jchain =
    [ "SpecialCharacterUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getHashMap_0", jm_getHashMap_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SpecialCharacterUtil"
        [ ( "jm_getHashMap_0", jm_getHashMap_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_getHashMap_0 : JR.Method
jm_getHashMap_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.declare "commonPhoneStrings" "" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 []), 
                    JR.declare "stringUtil" "" (JR.callStatic StringUtil.jm_getInstance_0 []), 
                    JR.declare "hashMap" "" (JR.invoke "createHashMap_0" (JR.callStatic StdUtil.jm_getInstance_0 []) []), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.str "!"), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.str "@"), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.field "POUND" (JR.local "commonPhoneStrings")), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.str "$"), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.str "%"), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.str "^"), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.field "AMPERSAND" (JR.local "commonSeps")), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.field "STAR" (JR.local "commonPhoneStrings")), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.field "PARENTHESIS_OPEN" (JR.local "commonSeps")), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.field "PARENTHESIS_CLOSE" (JR.local "commonSeps")), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.field "DASH" (JR.local "commonSeps")), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.field "UNDERSCORE" (JR.local "commonSeps")), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.field "PLUS" (JR.callStatic MathData.jm_getInstance_0 [])), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.field "EQUALS" (JR.local "commonSeps")), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.str "\\"), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.str "|"), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.field "EXTENSION_SEP" (JR.callStatic AbPathData.jm_getInstance_0 [])), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.str ","), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.str "<"), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.str ">"), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.str "?"), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.field "SEPARATOR" (JR.callStatic AbPathData.jm_getInstance_0 [])), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.str "~"), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.str "`"), (JR.field "EMPTY_STRING" (JR.local "stringUtil")) ]), 
                    JR.return (JR.local "hashMap") ])
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

