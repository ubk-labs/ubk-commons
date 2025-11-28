---

# `ubk-commons`

Shared, versioned primitives used across the UBK Labs protocol ecosystem.  
This package provides **canonical constants, errors, interfaces, and mocks** that multiple UBK modules depend on.

---

## Installation

```bash
npm install @ubk-labs/ubk-commons
````

---

## Repository Structure

```
ubk-commons/
│
├─ contracts/
│   ├─ constants/
│   │   └─ UBKConstants.sol
│   ├─ errors/
│   │   └─ UBKErrors.sol
│   └─ mocks/
│       ├─ MockAggregatorV3.sol
│       ├─ MockERC20.sol
│       └─ MockERC4626.sol
│
├─ interfaces/
│   └─ mocks/
│       └─ MockIERC4626.sol
│
└─ test/
    └─ mocks/
        ├─ MockAggregatorV3.test.js
        ├─ MockERC20.test.js
        └─ MockERC4626.test.js
```

This layout is consistent across all UBK Labs repositories, enabling predictable imports, shared test utilities, and standardized developer ergonomics.

---

## Solidity Usage

### **Errors**

```solidity
import "@ubk-labs/ubk-commons/contracts/errors/UBKErrors.sol";

contract Example {
    using UBKErrors for *;

    function doThing() external {
        revert UBKErrors.NotAuthorized();
    }
}
```

---

### **Constants**

```solidity
import "@ubk-labs/ubk-commons/contracts/constants/UBKConstants.sol";

uint256 public constant SCALE = UBKConstants.USD_SCALE; // e.g., 1e18
```

---

### **Mocks (for testing)**

```solidity
import "@ubk-labs/ubk-commons/contracts/mocks/MockERC20.sol";

MockERC20 token = new MockERC20("Mock Token", "MOCK", 18);
```

Mocks are intentionally lightweight and dependency-free so they can be used in:

* unit tests
* integration tests
* fuzzing frameworks
* protocol simulations
* external integrations

---

## Testing

This package uses Hardhat.

```bash
npm install
npx hardhat test
```

Tests validate mock behavior and ensure constant/error stability.

---

## License

MIT
