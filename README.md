# Ada Out-of-Bounds Array Access Example

This repository demonstrates a common error in Ada programming: accessing array elements outside of their declared bounds.  Ada's strong typing and range checking prevent many runtime errors, but accessing an array outside its bounds raises a `Constraint_Error` exception.  This example shows how to cause this error and how to handle potential out-of-bounds access using exception handling and bounds checking within a function.

## Files:

- `bug.ada`: Contains the Ada code that demonstrates the out-of-bounds access and the resulting exception.
- `bugSolution.ada`: Shows a corrected version with error handling to prevent the `Constraint_Error`.