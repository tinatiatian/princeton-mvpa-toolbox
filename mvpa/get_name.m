function [name obj] = get_name(subj,objtype,objno)

% Internal function - gets the object's name from its cell index
%
% [NAME OBJ] = GET_NAME(SUBJ,OBJTYPE,OBJNO)
%
% Returns the name of an object if all you know is its number. Avoids
% directly accessing the subj structure
%
% Useful if you're looping over all the members of a group, for
% instance


if nargin~=3
  error('I think you''ve forgotten to feed in all your arguments');
end

objcell = get_type(subj,objtype);
obj = objcell{objno};
name = obj.name;

