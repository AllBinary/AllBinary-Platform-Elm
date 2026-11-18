module Org.Allbinary.Logic.Communication.Java.Vm.Stats.JvmStatisticsData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.communication.java.vm.stats
-}

import JR



jclass : String
jclass =
    "JvmStatisticsData"


jchain : List String
jchain =
    [ "JvmStatisticsData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "JvmStatisticsData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_JVM_STATISTICS", jstatic_JVM_STATISTICS ), ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_TOTAL_MEMORY_BYTES", jstatic_TOTAL_MEMORY_BYTES ), ( "jstatic_TOTAL_MEMORY_KILOBYTES", jstatic_TOTAL_MEMORY_KILOBYTES ), ( "jstatic_TOTAL_MEMORY_MEGABYTES", jstatic_TOTAL_MEMORY_MEGABYTES ), ( "jstatic_FREE_MEMORY_BYTES", jstatic_FREE_MEMORY_BYTES ), ( "jstatic_FREE_MEMORY_KILOBYTES", jstatic_FREE_MEMORY_KILOBYTES ), ( "jstatic_FREE_MEMORY_MEGABYTES", jstatic_FREE_MEMORY_MEGABYTES ), ( "jstatic_MAX_MEMORY_BYTES", jstatic_MAX_MEMORY_BYTES ), ( "jstatic_MAX_MEMORY_KILOBYTES", jstatic_MAX_MEMORY_KILOBYTES ), ( "jstatic_MAX_MEMORY_MEGABYTES", jstatic_MAX_MEMORY_MEGABYTES ), ( "jstatic_NUMBER_OF_THREADS", jstatic_NUMBER_OF_THREADS ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_JVM_STATISTICS : JR.M
jstatic_JVM_STATISTICS s =
    JR.static "JvmStatisticsData" jclinit "JVM_STATISTICS"
        (JR.str "JVM_STATISTICS_")
        s


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "JvmStatisticsData" jclinit "NAME"
        (JR.concat jstatic_JVM_STATISTICS (JR.str "NAME"))
        s


jstatic_TOTAL_MEMORY_BYTES : JR.M
jstatic_TOTAL_MEMORY_BYTES s =
    JR.static "JvmStatisticsData" jclinit "TOTAL_MEMORY_BYTES"
        (JR.concat jstatic_JVM_STATISTICS (JR.str "TOTAL_MEMORY_BYTES"))
        s


jstatic_TOTAL_MEMORY_KILOBYTES : JR.M
jstatic_TOTAL_MEMORY_KILOBYTES s =
    JR.static "JvmStatisticsData" jclinit "TOTAL_MEMORY_KILOBYTES"
        (JR.concat jstatic_JVM_STATISTICS (JR.str "TOTAL_MEMORY_KILOBYTES"))
        s


jstatic_TOTAL_MEMORY_MEGABYTES : JR.M
jstatic_TOTAL_MEMORY_MEGABYTES s =
    JR.static "JvmStatisticsData" jclinit "TOTAL_MEMORY_MEGABYTES"
        (JR.concat jstatic_JVM_STATISTICS (JR.str "TOTAL_MEMORY_MEGABYTES"))
        s


jstatic_FREE_MEMORY_BYTES : JR.M
jstatic_FREE_MEMORY_BYTES s =
    JR.static "JvmStatisticsData" jclinit "FREE_MEMORY_BYTES"
        (JR.concat jstatic_JVM_STATISTICS (JR.str "FREE_MEMORY_BYTES"))
        s


jstatic_FREE_MEMORY_KILOBYTES : JR.M
jstatic_FREE_MEMORY_KILOBYTES s =
    JR.static "JvmStatisticsData" jclinit "FREE_MEMORY_KILOBYTES"
        (JR.concat jstatic_JVM_STATISTICS (JR.str "FREE_MEMORY_KILOBYTES"))
        s


jstatic_FREE_MEMORY_MEGABYTES : JR.M
jstatic_FREE_MEMORY_MEGABYTES s =
    JR.static "JvmStatisticsData" jclinit "FREE_MEMORY_MEGABYTES"
        (JR.concat jstatic_JVM_STATISTICS (JR.str "FREE_MEMORY_MEGABYTES"))
        s


jstatic_MAX_MEMORY_BYTES : JR.M
jstatic_MAX_MEMORY_BYTES s =
    JR.static "JvmStatisticsData" jclinit "MAX_MEMORY_BYTES"
        (JR.concat jstatic_JVM_STATISTICS (JR.str "MAX_MEMORY_BYTES"))
        s


jstatic_MAX_MEMORY_KILOBYTES : JR.M
jstatic_MAX_MEMORY_KILOBYTES s =
    JR.static "JvmStatisticsData" jclinit "MAX_MEMORY_KILOBYTES"
        (JR.concat jstatic_JVM_STATISTICS (JR.str "MAX_MEMORY_KILOBYTES"))
        s


jstatic_MAX_MEMORY_MEGABYTES : JR.M
jstatic_MAX_MEMORY_MEGABYTES s =
    JR.static "JvmStatisticsData" jclinit "MAX_MEMORY_MEGABYTES"
        (JR.concat jstatic_JVM_STATISTICS (JR.str "MAX_MEMORY_MEGABYTES"))
        s


jstatic_NUMBER_OF_THREADS : JR.M
jstatic_NUMBER_OF_THREADS s =
    JR.static "JvmStatisticsData" jclinit "NUMBER_OF_THREADS"
        (JR.concat jstatic_JVM_STATISTICS (JR.str "NUMBER_OF_THREADS"))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
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

