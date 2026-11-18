module Org.Allbinary.Logic.Control.Search.SearchData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.control.search
-}

import JR



jclass : String
jclass =
    "SearchData"


jchain : List String
jchain =
    [ "SearchData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SearchData"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_TOTAL_NUMBER_PAGES", jstatic_TOTAL_NUMBER_PAGES ), ( "jstatic_TOTAL_NUMBER_ITEMS_ON_THIS_PAGE", jstatic_TOTAL_NUMBER_ITEMS_ON_THIS_PAGE ), ( "jstatic_TOTAL_NUMBER_ITEMS", jstatic_TOTAL_NUMBER_ITEMS ), ( "jstatic_DEFAULT_PAGE_LENGTH", jstatic_DEFAULT_PAGE_LENGTH ), ( "jstatic_GENERATESTATICPAGES", jstatic_GENERATESTATICPAGES ), ( "jstatic_SEARCHBYSUMMARY", jstatic_SEARCHBYSUMMARY ), ( "jstatic_SEARCHBYDESCRIPTION", jstatic_SEARCHBYDESCRIPTION ), ( "jstatic_SEARCHBYCATEGORY", jstatic_SEARCHBYCATEGORY ), ( "jstatic_SEARCHCATEGORIES", jstatic_SEARCHCATEGORIES ), ( "jstatic_FILENAME", jstatic_FILENAME ), ( "jstatic_COLUMNNAME", jstatic_COLUMNNAME ), ( "jstatic_COLUMNVALUE", jstatic_COLUMNVALUE ), ( "jstatic_PARAMS", jstatic_PARAMS ), ( "jstatic_LENGTH", jstatic_LENGTH ), ( "jstatic_ORDER", jstatic_ORDER ), ( "jstatic_PAGE", jstatic_PAGE ), ( "jstatic_FIELDS", jstatic_FIELDS ), ( "jstatic_FIELD", jstatic_FIELD ), ( "jstatic_SORTBY", jstatic_SORTBY ), ( "jstatic_TYPE", jstatic_TYPE ), ( "jstatic_PAGE_INFO", jstatic_PAGE_INFO ), ( "jstatic_SEARCH", jstatic_SEARCH ), ( "jstatic_MAKEPUBLIC", jstatic_MAKEPUBLIC ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_TOTAL_NUMBER_PAGES : JR.M
jstatic_TOTAL_NUMBER_PAGES s =
    JR.static "SearchData" jclinit "TOTAL_NUMBER_PAGES"
        (JR.str "SEARCHDATA_TOTALNUMBEROFPAGES")
        s


jstatic_TOTAL_NUMBER_ITEMS_ON_THIS_PAGE : JR.M
jstatic_TOTAL_NUMBER_ITEMS_ON_THIS_PAGE s =
    JR.static "SearchData" jclinit "TOTAL_NUMBER_ITEMS_ON_THIS_PAGE"
        (JR.str "SEARCHDATA_TOTALNUMBEROFITEMSONTHISPAGE")
        s


jstatic_TOTAL_NUMBER_ITEMS : JR.M
jstatic_TOTAL_NUMBER_ITEMS s =
    JR.static "SearchData" jclinit "TOTAL_NUMBER_ITEMS"
        (JR.str "SEARCHDATA_TOTALNUMBEROFITEMS")
        s


jstatic_DEFAULT_PAGE_LENGTH : JR.M
jstatic_DEFAULT_PAGE_LENGTH s =
    JR.static "SearchData" jclinit "DEFAULT_PAGE_LENGTH"
        (JR.int 10)
        s


jstatic_GENERATESTATICPAGES : JR.M
jstatic_GENERATESTATICPAGES s =
    JR.static "SearchData" jclinit "GENERATESTATICPAGES"
        (JR.str "Generate Static Pages")
        s


jstatic_SEARCHBYSUMMARY : JR.M
jstatic_SEARCHBYSUMMARY s =
    JR.static "SearchData" jclinit "SEARCHBYSUMMARY"
        (JR.str "Search By Summary")
        s


jstatic_SEARCHBYDESCRIPTION : JR.M
jstatic_SEARCHBYDESCRIPTION s =
    JR.static "SearchData" jclinit "SEARCHBYDESCRIPTION"
        (JR.str "Search By Description")
        s


jstatic_SEARCHBYCATEGORY : JR.M
jstatic_SEARCHBYCATEGORY s =
    JR.static "SearchData" jclinit "SEARCHBYCATEGORY"
        (JR.str "Search By Category")
        s


jstatic_SEARCHCATEGORIES : JR.M
jstatic_SEARCHCATEGORIES s =
    JR.static "SearchData" jclinit "SEARCHCATEGORIES"
        (JR.str "Search Categories")
        s


jstatic_FILENAME : JR.M
jstatic_FILENAME s =
    JR.static "SearchData" jclinit "FILENAME"
        (JR.str "SEARCHDATA_BASEFILENAME")
        s


jstatic_COLUMNNAME : JR.M
jstatic_COLUMNNAME s =
    JR.static "SearchData" jclinit "COLUMNNAME"
        (JR.str "COLUMN_NAME")
        s


jstatic_COLUMNVALUE : JR.M
jstatic_COLUMNVALUE s =
    JR.static "SearchData" jclinit "COLUMNVALUE"
        (JR.str "COLUMN_VALUE")
        s


jstatic_PARAMS : JR.M
jstatic_PARAMS s =
    JR.static "SearchData" jclinit "PARAMS"
        (JR.str "SEARCHDATA_PARAMS")
        s


jstatic_LENGTH : JR.M
jstatic_LENGTH s =
    JR.static "SearchData" jclinit "LENGTH"
        (JR.str "SEARCHDATA_LENGTH")
        s


jstatic_ORDER : JR.M
jstatic_ORDER s =
    JR.static "SearchData" jclinit "ORDER"
        (JR.str "SEARCHDATA_ORDER")
        s


jstatic_PAGE : JR.M
jstatic_PAGE s =
    JR.static "SearchData" jclinit "PAGE"
        (JR.str "SEARCHDATA_PAGE")
        s


jstatic_FIELDS : JR.M
jstatic_FIELDS s =
    JR.static "SearchData" jclinit "FIELDS"
        (JR.str "SEARCHDATA_FIELDS")
        s


jstatic_FIELD : JR.M
jstatic_FIELD s =
    JR.static "SearchData" jclinit "FIELD"
        (JR.str "SEARCHDATA_FIELD")
        s


jstatic_SORTBY : JR.M
jstatic_SORTBY s =
    JR.static "SearchData" jclinit "SORTBY"
        (JR.str "SEARCHDATA_SORTBY")
        s


jstatic_TYPE : JR.M
jstatic_TYPE s =
    JR.static "SearchData" jclinit "TYPE"
        (JR.str "SEARCHDATA_TYPE")
        s


jstatic_PAGE_INFO : JR.M
jstatic_PAGE_INFO s =
    JR.static "SearchData" jclinit "PAGE_INFO"
        (JR.str "pageInfo")
        s


jstatic_SEARCH : JR.M
jstatic_SEARCH s =
    JR.static "SearchData" jclinit "SEARCH"
        (JR.str "search")
        s


jstatic_MAKEPUBLIC : JR.M
jstatic_MAKEPUBLIC s =
    JR.static "SearchData" jclinit "MAKEPUBLIC"
        (JR.str "Make Public")
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

