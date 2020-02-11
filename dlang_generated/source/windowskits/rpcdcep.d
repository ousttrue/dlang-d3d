// This source code was generated by regenerator
module windowskits.rpcdcep;
import windowskits.rpcdce;
import windowskits.rpc;
import core.sys.windows.basetyps;
alias PRPC_MESSAGE = _RPC_MESSAGE*;
struct _RPC_MESSAGE
{
    RPC_BINDING_HANDLE Handle;
    uint DataRepresentation;
    void* Buffer;
    uint BufferLength;
    uint ProcNum;
    PRPC_SYNTAX_IDENTIFIER TransferSyntax;
    void* RpcInterfaceInformation;
    void* ReservedForRuntime;
    void* ManagerEpv;
    void* ImportContext;
    uint RpcFlags;
}
alias PRPC_SYNTAX_IDENTIFIER = _RPC_SYNTAX_IDENTIFIER*;
struct _RPC_SYNTAX_IDENTIFIER
{
    GUID SyntaxGUID;
    RPC_VERSION SyntaxVersion;
}
alias RPC_VERSION = _RPC_VERSION;
struct _RPC_VERSION
{
    ushort MajorVersion;
    ushort MinorVersion;
}
