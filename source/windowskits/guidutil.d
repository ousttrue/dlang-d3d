module windowskits.guidutil;

import std.uuid;
import core.sys.windows.basetyps;

GUID parseGUID(string guid)
{
    return toGUID(parseUUID(guid));
}
GUID toGUID(immutable std.uuid.UUID uuid)
{
    ubyte[8] data=uuid.data[8..$];
    return GUID(
                uuid.data[0] << 24
                |uuid.data[1] << 16
                |uuid.data[2] << 8
                |uuid.data[3],

                uuid.data[4] << 8
                |uuid.data[5],

                uuid.data[6] << 8
                |uuid.data[7],

                data
                );
}

