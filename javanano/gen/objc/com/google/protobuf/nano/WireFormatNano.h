//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/protobuf/javanano/src/main/java/com/google/protobuf/nano/WireFormatNano.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleProtobufNanoWireFormatNano")
#ifdef RESTRICT_ComGoogleProtobufNanoWireFormatNano
#define INCLUDE_ALL_ComGoogleProtobufNanoWireFormatNano 0
#else
#define INCLUDE_ALL_ComGoogleProtobufNanoWireFormatNano 1
#endif
#undef RESTRICT_ComGoogleProtobufNanoWireFormatNano

#if !defined (ComGoogleProtobufNanoWireFormatNano_) && (INCLUDE_ALL_ComGoogleProtobufNanoWireFormatNano || defined(INCLUDE_ComGoogleProtobufNanoWireFormatNano))
#define ComGoogleProtobufNanoWireFormatNano_

@class ComGoogleProtobufNanoCodedInputByteBufferNano;
@class IOSBooleanArray;
@class IOSByteArray;
@class IOSDoubleArray;
@class IOSFloatArray;
@class IOSIntArray;
@class IOSLongArray;
@class IOSObjectArray;

/*!
 @brief This class is used internally by the Protocol Buffer library and generated
  message implementations.It is public only because those generated messages
  do not reside in the <code>protobuf</code> package.
 Others should not use this
  class directly.
  This class contains constants and helper functions useful for dealing with
  the Protocol Buffer wire format.
 @author kenton@@google.com Kenton Varda
 */
@interface ComGoogleProtobufNanoWireFormatNano : NSObject

#pragma mark Public

/*!
 @brief Computes the array length of a repeated field.We assume that in the common case repeated
  fields are contiguously serialized but we still correctly handle interspersed values of a
  repeated field (but with extra allocations).
 Rewinds to current input position before returning.
 @param input stream input, pointing to the byte after the first tag
 @param tag repeated field tag just read
 @return length of array
 @throw IOException
 */
+ (jint)getRepeatedFieldArrayLengthWithComGoogleProtobufNanoCodedInputByteBufferNano:(ComGoogleProtobufNanoCodedInputByteBufferNano *)input
                                                                             withInt:(jint)tag;

/*!
 @brief Given a tag value, determines the field number (the upper 29 bits).
 */
+ (jint)getTagFieldNumberWithInt:(jint)tag;

/*!
 @brief Parses an unknown field.This implementation skips the field.
 <p>Generated messages will call this for unknown fields if the store_unknown_fields
  option is off.
 @return true unless the tag is an end-group tag.
 */
+ (jboolean)parseUnknownFieldWithComGoogleProtobufNanoCodedInputByteBufferNano:(ComGoogleProtobufNanoCodedInputByteBufferNano *)input
                                                                       withInt:(jint)tag;

#pragma mark Package-Private

/*!
 @brief Given a tag value, determines the wire type (the lower 3 bits).
 */
+ (jint)getTagWireTypeWithInt:(jint)tag;

/*!
 @brief Makes a tag value given a field number and wire type.
 */
+ (jint)makeTagWithInt:(jint)fieldNumber
               withInt:(jint)wireType;

@end

J2OBJC_STATIC_INIT(ComGoogleProtobufNanoWireFormatNano)

inline jint ComGoogleProtobufNanoWireFormatNano_get_WIRETYPE_VARINT(void);
#define ComGoogleProtobufNanoWireFormatNano_WIRETYPE_VARINT 0
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoWireFormatNano, WIRETYPE_VARINT, jint)

inline jint ComGoogleProtobufNanoWireFormatNano_get_WIRETYPE_FIXED64(void);
#define ComGoogleProtobufNanoWireFormatNano_WIRETYPE_FIXED64 1
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoWireFormatNano, WIRETYPE_FIXED64, jint)

inline jint ComGoogleProtobufNanoWireFormatNano_get_WIRETYPE_LENGTH_DELIMITED(void);
#define ComGoogleProtobufNanoWireFormatNano_WIRETYPE_LENGTH_DELIMITED 2
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoWireFormatNano, WIRETYPE_LENGTH_DELIMITED, jint)

inline jint ComGoogleProtobufNanoWireFormatNano_get_WIRETYPE_START_GROUP(void);
#define ComGoogleProtobufNanoWireFormatNano_WIRETYPE_START_GROUP 3
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoWireFormatNano, WIRETYPE_START_GROUP, jint)

inline jint ComGoogleProtobufNanoWireFormatNano_get_WIRETYPE_END_GROUP(void);
#define ComGoogleProtobufNanoWireFormatNano_WIRETYPE_END_GROUP 4
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoWireFormatNano, WIRETYPE_END_GROUP, jint)

inline jint ComGoogleProtobufNanoWireFormatNano_get_WIRETYPE_FIXED32(void);
#define ComGoogleProtobufNanoWireFormatNano_WIRETYPE_FIXED32 5
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoWireFormatNano, WIRETYPE_FIXED32, jint)

inline jint ComGoogleProtobufNanoWireFormatNano_get_TAG_TYPE_BITS(void);
#define ComGoogleProtobufNanoWireFormatNano_TAG_TYPE_BITS 3
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoWireFormatNano, TAG_TYPE_BITS, jint)

inline jint ComGoogleProtobufNanoWireFormatNano_get_TAG_TYPE_MASK(void);
#define ComGoogleProtobufNanoWireFormatNano_TAG_TYPE_MASK 7
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoWireFormatNano, TAG_TYPE_MASK, jint)

inline IOSIntArray *ComGoogleProtobufNanoWireFormatNano_get_EMPTY_INT_ARRAY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSIntArray *ComGoogleProtobufNanoWireFormatNano_EMPTY_INT_ARRAY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleProtobufNanoWireFormatNano, EMPTY_INT_ARRAY, IOSIntArray *)

inline IOSLongArray *ComGoogleProtobufNanoWireFormatNano_get_EMPTY_LONG_ARRAY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSLongArray *ComGoogleProtobufNanoWireFormatNano_EMPTY_LONG_ARRAY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleProtobufNanoWireFormatNano, EMPTY_LONG_ARRAY, IOSLongArray *)

inline IOSFloatArray *ComGoogleProtobufNanoWireFormatNano_get_EMPTY_FLOAT_ARRAY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSFloatArray *ComGoogleProtobufNanoWireFormatNano_EMPTY_FLOAT_ARRAY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleProtobufNanoWireFormatNano, EMPTY_FLOAT_ARRAY, IOSFloatArray *)

inline IOSDoubleArray *ComGoogleProtobufNanoWireFormatNano_get_EMPTY_DOUBLE_ARRAY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSDoubleArray *ComGoogleProtobufNanoWireFormatNano_EMPTY_DOUBLE_ARRAY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleProtobufNanoWireFormatNano, EMPTY_DOUBLE_ARRAY, IOSDoubleArray *)

inline IOSBooleanArray *ComGoogleProtobufNanoWireFormatNano_get_EMPTY_BOOLEAN_ARRAY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSBooleanArray *ComGoogleProtobufNanoWireFormatNano_EMPTY_BOOLEAN_ARRAY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleProtobufNanoWireFormatNano, EMPTY_BOOLEAN_ARRAY, IOSBooleanArray *)

inline IOSObjectArray *ComGoogleProtobufNanoWireFormatNano_get_EMPTY_STRING_ARRAY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *ComGoogleProtobufNanoWireFormatNano_EMPTY_STRING_ARRAY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleProtobufNanoWireFormatNano, EMPTY_STRING_ARRAY, IOSObjectArray *)

inline IOSObjectArray *ComGoogleProtobufNanoWireFormatNano_get_EMPTY_BYTES_ARRAY(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSObjectArray *ComGoogleProtobufNanoWireFormatNano_EMPTY_BYTES_ARRAY;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleProtobufNanoWireFormatNano, EMPTY_BYTES_ARRAY, IOSObjectArray *)

inline IOSByteArray *ComGoogleProtobufNanoWireFormatNano_get_EMPTY_BYTES(void);
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT IOSByteArray *ComGoogleProtobufNanoWireFormatNano_EMPTY_BYTES;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleProtobufNanoWireFormatNano, EMPTY_BYTES, IOSByteArray *)

FOUNDATION_EXPORT jint ComGoogleProtobufNanoWireFormatNano_getTagWireTypeWithInt_(jint tag);

FOUNDATION_EXPORT jint ComGoogleProtobufNanoWireFormatNano_getTagFieldNumberWithInt_(jint tag);

FOUNDATION_EXPORT jint ComGoogleProtobufNanoWireFormatNano_makeTagWithInt_withInt_(jint fieldNumber, jint wireType);

FOUNDATION_EXPORT jboolean ComGoogleProtobufNanoWireFormatNano_parseUnknownFieldWithComGoogleProtobufNanoCodedInputByteBufferNano_withInt_(ComGoogleProtobufNanoCodedInputByteBufferNano *input, jint tag);

FOUNDATION_EXPORT jint ComGoogleProtobufNanoWireFormatNano_getRepeatedFieldArrayLengthWithComGoogleProtobufNanoCodedInputByteBufferNano_withInt_(ComGoogleProtobufNanoCodedInputByteBufferNano *input, jint tag);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleProtobufNanoWireFormatNano)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleProtobufNanoWireFormatNano")
