# `ubk-commons`

Shared, versioned common definitions used across UBK Labs’ protocols and tooling.

`ubk-commons` provides a minimal set of public, non-sensitive primitives that multiple UBK repositories depend on.  

---

## Contents

### 1. Common Errors  
Contract-level errors that are not specific to any one UBK module.

### Constants  
System constants that are shared across open and closed modules, such as:

- Standardized USD scaling (1e18)  
- Default oracle bounds  
- Decimal normalization factors  

---

## Installation

```bash
npm install @ubk-labs/ubk-commons
```

---

## Solidity Usage

```solidity
import "@ubk-labs/ubk-commons/commons/Errors.sol";
import "@ubk-labs/ubk-commons/commons/Constants.sol";
```

These symbols are guaranteed to remain stable within a major version.

## License

MIT
---