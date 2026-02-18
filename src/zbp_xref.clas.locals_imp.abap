CLASS lhc_zr_xref DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS:
      get_global_authorizations FOR GLOBAL AUTHORIZATION
        IMPORTING
        REQUEST requested_authorizations FOR xRefs
        RESULT result,
      earlynumbering_create FOR NUMBERING
        IMPORTING entities FOR CREATE Xrefs.
ENDCLASS.

CLASS lhc_zr_xref IMPLEMENTATION.
  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD earlynumbering_create.
    LOOP AT entities ASSIGNING FIELD-SYMBOL(<entity>).
      cl_numberrange_runtime=>number_get( EXPORTING object = 'ZXREF'
                                                    nr_range_nr = '01'
                                          IMPORTING number = DATA(id) ).

      INSERT VALUE #( %cid = <entity>-%cid
                      id   = id ) INTO TABLE mapped-xrefs.
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.
