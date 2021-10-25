Watcher = ({});

function Watcher.GetEventDataTable(eventDataString)
	local function DelimitedToTable(String, Delimiter)
		if not(Delimiter or #Delimiter < 1)then
			return nil
		end

		local tbl = ({});
		local sa = (String);
		local sD = ("");
		local nP = string.find(sa, Delimiter, 1, true);

		while(nP)do
			sD = string.sub(sa, 1, nP-1);
			table.insert(tbl, #tbl+1, sD);
			sa = string.sub(sa, nP+1, -1);
			nP = string.find(sa, Delimiter, 1, true);
		end

		if(sa ~= "")then
			Table.Insert(tbl, #tbl+1, sa)
		end

		return tbl;
	end

	local tbReturn = DelimitedToTable(eventDataString, "|");
	
	local event = ({});
	
	if(Table.Count(tbReturn) == 2)then
		event.Type = tbReturn[1];
		event.Path = tbReturn[2];
	elseif(Table.Count(tbReturn) == 3)then
		event.Type = tbReturn[1];
		event.Path = tbReturn[2];
		event.OldPath = tbReturn[3];
	end

	return event;
end

function Watcher.Initialize(objRef)
	DLL.CallFunction("FileSystemWatcher.dll", "Initialize", "\""..objRef.."\"", DLL_RETURN_TYPE_LONG, DLL_CALL_STDCALL);
end

function Watcher.UnInitialize(objRef)
	DLL.CallFunction("FileSystemWatcher.dll", "UnInitialize", "\""..objRef.."\"", DLL_RETURN_TYPE_LONG, DLL_CALL_STDCALL);
end
--------------------------------------------------------------------------------------------------------------------------------------------
function Watcher.GetPath(objRef)
	return DLL.CallFunction("FileSystemWatcher.dll", "GetPath", "\""..objRef.."\"", DLL_RETURN_TYPE_STRING, DLL_CALL_STDCALL);
end

function Watcher.GetFilter(objRef)
	return DLL.CallFunction("FileSystemWatcher.dll", "GetFilter", "\""..objRef.."\"", DLL_RETURN_TYPE_STRING, DLL_CALL_STDCALL);
end

function Watcher.GetBufferSize(objRef)
	return DLL.CallFunction("FileSystemWatcher.dll", "GetBufferSize", "\""..objRef.."\"", DLL_RETURN_TYPE_LONG, DLL_CALL_STDCALL);
end

function Watcher.GetNotifyFilter(objRef)
	return DLL.CallFunction("FileSystemWatcher.dll", "GetNotifyFilter", "\""..objRef.."\"", DLL_RETURN_TYPE_STRING, DLL_CALL_STDCALL);
end

function Watcher.GetEventType(objRef)
	return DLL.CallFunction("FileSystemWatcher.dll", "GetEventType", "\""..objRef.."\"", DLL_RETURN_TYPE_STRING, DLL_CALL_STDCALL);
end

function Watcher.GetLogErrors(objRef)
	return DLL.CallFunction("FileSystemWatcher.dll", "GetLogErrors", "\""..objRef.."\"", DLL_RETURN_TYPE_LONG, DLL_CALL_STDCALL);
end

function Watcher.GetIncludeSubdirectories(objRef)
	return DLL.CallFunction("FileSystemWatcher.dll", "GetIncludeSubdirectories", "\""..objRef.."\"", DLL_RETURN_TYPE_LONG, DLL_CALL_STDCALL);
end

function Watcher.GetEnableRaisingEvents(objRef)
	return DLL.CallFunction("FileSystemWatcher.dll", "GetEnableRaisingEvents", "\""..objRef.."\"", DLL_RETURN_TYPE_LONG, DLL_CALL_STDCALL);
end

function Watcher.GetLoggedEvent(objRef)
	local eventDataString = DLL.CallFunction("FileSystemWatcher.dll", "GetLoggedEvent", "\""..objRef.."\"", DLL_RETURN_TYPE_STRING, DLL_CALL_STDCALL);
	return Watcher.GetEventDataTable(eventDataString);
end

function Watcher.GetLoggedError(objRef)
	local errorDataString = DLL.CallFunction("FileSystemWatcher.dll", "GetLoggedError", "\""..objRef.."\"", DLL_RETURN_TYPE_STRING, DLL_CALL_STDCALL);
	return GetErrorDataTable(errorDataString);
end
--------------------------------------------------------------------------------------------------------------------------------------------
function Watcher.SetPath(objRef, path)
	DLL.CallFunction("FileSystemWatcher.dll", "SetPath", "\""..objRef.."\""..",".."\""..path.."\"", DLL_RETURN_TYPE_LONG, DLL_CALL_STDCALL);
end

function Watcher.SetFilter(objRef, filter)
	DLL.CallFunction("FileSystemWatcher.dll", "SetFilter", "\""..objRef.."\""..",".."\""..filter.."\"", DLL_RETURN_TYPE_LONG, DLL_CALL_STDCALL);
end

function Watcher.SetBufferSize(objRef, bufferSize)
	DLL.CallFunction("FileSystemWatcher.dll", "SetBufferSize", "\""..objRef.."\""..","..bufferSize, DLL_RETURN_TYPE_LONG, DLL_CALL_STDCALL);
end

function Watcher.SetNotifyFilter(objRef, notifyFilter)
	DLL.CallFunction("FileSystemWatcher.dll", "SetNotifyFilter", "\""..objRef.."\""..",".."\""..notifyFilter.."\"", DLL_RETURN_TYPE_LONG, DLL_CALL_STDCALL);
end

function Watcher.SetEventType(objRef, eventType)
	DLL.CallFunction("FileSystemWatcher.dll", "SetEventType", "\""..objRef.."\""..",".."\""..eventType.."\"", DLL_RETURN_TYPE_LONG, DLL_CALL_STDCALL);
end

function Watcher.SetLogErrors(objRef, logErrors)
	if(logErrors == true)then
		logErrors = (1);
	else
		logErrors = (0);
	end

	DLL.CallFunction("FileSystemWatcher.dll", "SetLogErrors", "\""..objRef.."\""..","..logErrors, DLL_RETURN_TYPE_LONG, DLL_CALL_STDCALL);
end

function Watcher.SetIncludeSubdirectories(objRef, includeSubdirectories)
	if(includeSubdirectories == true)then
		includeSubdirectories = (1);
	else
		includeSubdirectories = (0);
	end

	DLL.CallFunction("FileSystemWatcher.dll", "SetIncludeSubdirectories", "\""..objRef.."\""..","..includeSubdirectories, DLL_RETURN_TYPE_LONG, DLL_CALL_STDCALL);
end

function Watcher.SetEnableRaisingEvents(objRef, enableRaisingEvents)
	if(enableRaisingEvents == true)then
		enableRaisingEvents = (1);
	else
		enableRaisingEvents = (0);
	end

	DLL.CallFunction("FileSystemWatcher.dll", "SetEnableRaisingEvents", "\""..objRef.."\""..","..enableRaisingEvents, DLL_RETURN_TYPE_LONG, DLL_CALL_STDCALL);
end
--------------------------------------------------------------------------------------------------------------------------------------------
function Watcher.GetError()
	return DLL.CallFunction("FileSystemWatcher.dll", "GetError", "", DLL_RETURN_TYPE_STRING, DLL_CALL_STDCALL);
end