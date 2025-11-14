// ───────────── Access Control Errors ─────────────
error UnauthorizedAccess(string functionName, address caller);

// ───────────── Validation Errors ─────────────
//Commons
error ZeroAmount(string functionName, address caller);
error ZeroAddress(string functionName, string field);
error InvalidAddress(string functionName, address addr);
error InvalidRepayToken(string functionName, address caller);
error InvalidArg(string functionName, string field);
