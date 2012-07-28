with Interfaces.C; use Interfaces.C;

package stdint_h is

   subtype int8_t is signed_char;

   subtype int16_t is short;

   subtype int32_t is int;

   subtype int64_t is long;

   subtype uint8_t is unsigned_char;

   subtype uint16_t is unsigned_short;

   subtype uint32_t is unsigned;

   subtype uint64_t is unsigned_long;

   subtype int_least8_t is signed_char;

   subtype int_least16_t is short;

   subtype int_least32_t is int;

   subtype int_least64_t is long;

   subtype uint_least8_t is unsigned_char;

   subtype uint_least16_t is unsigned_short;

   subtype uint_least32_t is unsigned;

   subtype uint_least64_t is unsigned_long;

   subtype int_fast8_t is signed_char;

   subtype int_fast16_t is long;

   subtype int_fast32_t is long;

   subtype int_fast64_t is long;

   subtype uint_fast8_t is unsigned_char;

   subtype uint_fast16_t is unsigned_long;

   subtype uint_fast32_t is unsigned_long;

   subtype uint_fast64_t is unsigned_long;

   subtype intptr_t is long;

   subtype uintptr_t is unsigned_long;

   subtype intmax_t is long;

   subtype uintmax_t is unsigned_long;

end stdint_h;
