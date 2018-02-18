:- module init_package.


:- interface.

:- import_module
    io.

:- pred init_package(io::di, io::uo) is det.


:- implementation.

:- import_module
    dir.

:- import_module
    manifest.

init_package(!IO) :-
    dir.make_single_directory(".packages", _, !IO),
    io.open_output("manifest.json", MaybeFile, !IO),
    (
      MaybeFile = ok(File),
      io.write_string(File, default_manifest, !IO)
    ;
      MaybeFile = error(_)
    ).
 
:- func default_manifest = string.
default_manifest =
"{
    \"name\": \"package_name\",
    \"author\": \"package_author\",
    \"dependencies\": {
    }
}\n".
