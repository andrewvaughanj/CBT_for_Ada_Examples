-- Bit operations
package Bit_Ops is

  -- Bit and, bit or, bit neg, shift left and shift right

  -- Operations on integers
  function "And" (Left, Right : Integer) return Integer;
  function "Or"  (Left, Right : Integer) return Integer;
  function "Xor" (Left, Right : Integer) return Integer;
  function "Not" (Val : Integer) return Integer;
  function Shl (Val : Integer; Bits : Integer) return Integer;
  function Shr (Val : Integer; Bits : Integer) return Integer;

  -- Operations on long integers
  function "And" (Left, Right : Long_Integer) return Long_Integer;
  function "Or"  (Left, Right : Long_Integer) return Long_Integer;
  function "Xor" (Left, Right : Long_Integer) return Long_Integer;
  function "Not" (Val : Long_Integer) return Long_Integer;
  function Shl (Val : Long_Integer; Bits : Integer) return Long_Integer;
  function Shr (Val : Long_Integer; Bits : Integer) return Long_Integer;

  -- Operations on long long integers
  function "And" (Left, Right : Long_Long_Integer) return Long_Long_Integer;
  function "Or"  (Left, Right : Long_Long_Integer) return Long_Long_Integer;
  function "Xor" (Left, Right : Long_Long_Integer) return Long_Long_Integer;
  function "Not" (Val : Long_Long_Integer) return Long_Long_Integer;
  function Shl (Val : Long_Long_Integer; Bits : Integer) return Long_Long_Integer;
  function Shr (Val : Long_Long_Integer; Bits : Integer) return Long_Long_Integer;

end Bit_Ops;



