%{

%}

digit		[0-9]
letter		[a-zA-Z]

%%
;			{ return SEMICOLON;	}
true		{ return TRUE;		}
false		{ return FALSE;		}
if			{ return if;		}
then		{ return then;		}
begin		{ return begin;		}
end			{ return end;		}
%%

