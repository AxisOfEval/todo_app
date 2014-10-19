-module(todo).

-compile({parse_transform, sqerl_gobot}).

-export([
         '#insert_fields'/0,
         '#update_fields'/0,
         '#statements'/0,
         '#table_name'/0
        ]).

%% Must be the same as the module name
-record(todo, {
          id :: integer(),
          name :: binary()
         }).

'#insert_fields'() ->
    [name].

'#update_fields'() ->
    [name].

'#statements'() ->
    [default].

%% Only needed if table name is different than module name
'#table_name'() ->
   "todos".