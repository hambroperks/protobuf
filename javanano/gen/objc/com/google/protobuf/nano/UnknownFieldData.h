//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/protobuf/javanano/src/main/java/com/google/protobuf/nano/UnknownFieldData.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleProtobufNanoUnknownFieldData")
#ifdef RESTRICT_ComGoogleProtobufNanoUnknownFieldData
#define INCLUDE_ALL_ComGoogleProtobufNanoUnknownFieldData 0
#else
#define INCLUDE_ALL_ComGoogleProtobufNanoUnknownFieldData 1
#endif
#undef RESTRICT_ComGoogleProtobufNanoUnknownFieldData

#if !defined (ComGoogleProtobufNanoUnknownFieldData_) && (INCLUDE_ALL_ComGoogleProtobufNanoUnknownFieldData || defined(INCLUDE_ComGoogleProtobufNanoUnknownFieldData))
#define ComGoogleProtobufNanoUnknownFieldData_

@class ComGoogleProtobufNanoCodedOutputByteBufferNano;
@class IOSByteArray;

/*!
 @brief Stores unknown fields.These might be extensions or fields that the generated
  API doesn't know about yet.
 @author bduff@@google.com (Brian Duff)
 */
@interface ComGoogleProtobufNanoUnknownFieldData : NSObject {
 @public
  jint tag_;
  /*!
   @brief Important: this should be treated as immutable, even though it's possible
  to change the array values.
   */
  IOSByteArray *bytes_;
}

#pragma mark Public

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

#pragma mark Package-Private

- (instancetype)initWithInt:(jint)tag
              withByteArray:(IOSByteArray *)bytes;

- (jint)computeSerializedSize;

- (void)writeToWithComGoogleProtobufNanoCodedOutputByteBufferNano:(ComGoogleProtobufNanoCodedOutputByteBufferNano *)output;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleProtobufNanoUnknownFieldData)

J2OBJC_FIELD_SETTER(ComGoogleProtobufNanoUnknownFieldData, bytes_, IOSByteArray *)

FOUNDATION_EXPORT void ComGoogleProtobufNanoUnknownFieldData_initWithInt_withByteArray_(ComGoogleProtobufNanoUnknownFieldData *self, jint tag, IOSByteArray *bytes);

FOUNDATION_EXPORT ComGoogleProtobufNanoUnknownFieldData *new_ComGoogleProtobufNanoUnknownFieldData_initWithInt_withByteArray_(jint tag, IOSByteArray *bytes) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleProtobufNanoUnknownFieldData *create_ComGoogleProtobufNanoUnknownFieldData_initWithInt_withByteArray_(jint tag, IOSByteArray *bytes);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleProtobufNanoUnknownFieldData)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleProtobufNanoUnknownFieldData")
