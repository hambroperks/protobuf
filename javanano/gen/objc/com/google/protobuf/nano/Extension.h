//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/protobuf/javanano/src/main/java/com/google/protobuf/nano/Extension.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleProtobufNanoExtension")
#ifdef RESTRICT_ComGoogleProtobufNanoExtension
#define INCLUDE_ALL_ComGoogleProtobufNanoExtension 0
#else
#define INCLUDE_ALL_ComGoogleProtobufNanoExtension 1
#endif
#undef RESTRICT_ComGoogleProtobufNanoExtension

#if !defined (ComGoogleProtobufNanoExtension_) && (INCLUDE_ALL_ComGoogleProtobufNanoExtension || defined(INCLUDE_ComGoogleProtobufNanoExtension))
#define ComGoogleProtobufNanoExtension_

@class ComGoogleProtobufNanoCodedInputByteBufferNano;
@class ComGoogleProtobufNanoCodedOutputByteBufferNano;
@class ComGoogleProtobufNanoUnknownFieldData;
@class IOSClass;
@protocol JavaUtilList;

/*!
 @brief Represents an extension.
 @author bduff@@google.com (Brian Duff)
 @author maxtroy@@google.com (Max Cai)
 */
@interface ComGoogleProtobufNanoExtension : NSObject {
 @public
  /*!
   @brief Protocol Buffer type of this extension; one of the <code>TYPE_</code> constants.
   */
  jint type_;
  /*!
   @brief Java type of this extension.For a singular extension, this is the boxed Java type for the
  Protocol Buffer <code>type</code>; for a repeated extension, this is an array type whose
  component type is the unboxed Java type for <code>type</code>.
   For example, for a singular 
 <code>int32</code>/<code>TYPE_INT32</code> extension, this equals <code>Integer.class</code>; for a
  repeated <code>int32</code> extension, this equals <code>int[].class</code>.
   */
  IOSClass *clazz_;
  /*!
   @brief Tag number of this extension.The data should be viewed as an unsigned 32-bit value.
   */
  jint tag_;
  /*!
   @brief Whether this extension is repeated.
   */
  jboolean repeated_;
}

#pragma mark Public

/*!
 @brief Creates an <code>Extension</code> of the given message type and tag number.
 Should be used by the generated code only.
 @param type<code>TYPE_MESSAGE</code>  or <code>TYPE_GROUP</code>
 */
+ (ComGoogleProtobufNanoExtension *)createMessageTypedWithInt:(jint)type
                                                 withIOSClass:(IOSClass *)clazz
                                                      withInt:(jint)tag;

/*!
 @brief Creates an <code>Extension</code> of the given message type and tag number.
 Should be used by the generated code only.
 @param type<code>TYPE_MESSAGE</code>  or <code>TYPE_GROUP</code>
 */
+ (ComGoogleProtobufNanoExtension *)createMessageTypedWithInt:(jint)type
                                                 withIOSClass:(IOSClass *)clazz
                                                     withLong:(jlong)tag;

/*!
 @brief Creates an <code>Extension</code> of the given primitive type and tag number.
 Should be used by the generated code only.
 @param type one of <code>TYPE_*</code> , except <code>TYPE_MESSAGE</code>  and <code>TYPE_GROUP</code>
 @param clazz the boxed Java type of this extension
 */
+ (ComGoogleProtobufNanoExtension *)createPrimitiveTypedWithInt:(jint)type
                                                   withIOSClass:(IOSClass *)clazz
                                                       withLong:(jlong)tag;

/*!
 @brief Creates a repeated <code>Extension</code> of the given message type and tag number.
 Should be used by the generated code only.
 @param type<code>TYPE_MESSAGE</code>  or <code>TYPE_GROUP</code>
 */
+ (ComGoogleProtobufNanoExtension *)createRepeatedMessageTypedWithInt:(jint)type
                                                         withIOSClass:(IOSClass *)clazz
                                                             withLong:(jlong)tag;

/*!
 @brief Creates a repeated <code>Extension</code> of the given primitive type and tag number.
 Should be used by the generated code only.
 @param type one of <code>TYPE_*</code> , except <code>TYPE_MESSAGE</code>  and <code>TYPE_GROUP</code>
 @param clazz the Java array type of this extension, with an unboxed component type
 */
+ (ComGoogleProtobufNanoExtension *)createRepeatedPrimitiveTypedWithInt:(jint)type
                                                           withIOSClass:(IOSClass *)clazz
                                                               withLong:(jlong)tag
                                                               withLong:(jlong)nonPackedTag
                                                               withLong:(jlong)packedTag;

#pragma mark Protected

- (jint)computeRepeatedSerializedSizeWithId:(id)array;

- (jint)computeSingularSerializedSizeWithId:(id)value;

- (id)readDataWithComGoogleProtobufNanoCodedInputByteBufferNano:(ComGoogleProtobufNanoCodedInputByteBufferNano *)input;

- (void)readDataIntoWithComGoogleProtobufNanoUnknownFieldData:(ComGoogleProtobufNanoUnknownFieldData *)data
                                             withJavaUtilList:(id<JavaUtilList>)resultList;

- (void)writeRepeatedDataWithId:(id)array
withComGoogleProtobufNanoCodedOutputByteBufferNano:(ComGoogleProtobufNanoCodedOutputByteBufferNano *)output;

- (void)writeSingularDataWithId:(id)value
withComGoogleProtobufNanoCodedOutputByteBufferNano:(ComGoogleProtobufNanoCodedOutputByteBufferNano *)outArg;

#pragma mark Package-Private

- (jint)computeSerializedSizeWithId:(id)value;

/*!
 @brief Returns the value of this extension stored in the given list of unknown fields, or 
 <code>null</code> if no unknown fields matches this extension.
 @param unknownFields a list of <code>UnknownFieldData</code> . All of the elements must have a tag
                        that matches this Extension's tag.
 */
- (id)getValueFromWithJavaUtilList:(id<JavaUtilList>)unknownFields;

- (void)writeToWithId:(id)value
withComGoogleProtobufNanoCodedOutputByteBufferNano:(ComGoogleProtobufNanoCodedOutputByteBufferNano *)output;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleProtobufNanoExtension)

J2OBJC_FIELD_SETTER(ComGoogleProtobufNanoExtension, clazz_, IOSClass *)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_DOUBLE(void);
#define ComGoogleProtobufNanoExtension_TYPE_DOUBLE 1
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_DOUBLE, jint)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_FLOAT(void);
#define ComGoogleProtobufNanoExtension_TYPE_FLOAT 2
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_FLOAT, jint)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_INT64(void);
#define ComGoogleProtobufNanoExtension_TYPE_INT64 3
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_INT64, jint)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_UINT64(void);
#define ComGoogleProtobufNanoExtension_TYPE_UINT64 4
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_UINT64, jint)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_INT32(void);
#define ComGoogleProtobufNanoExtension_TYPE_INT32 5
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_INT32, jint)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_FIXED64(void);
#define ComGoogleProtobufNanoExtension_TYPE_FIXED64 6
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_FIXED64, jint)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_FIXED32(void);
#define ComGoogleProtobufNanoExtension_TYPE_FIXED32 7
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_FIXED32, jint)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_BOOL(void);
#define ComGoogleProtobufNanoExtension_TYPE_BOOL 8
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_BOOL, jint)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_STRING(void);
#define ComGoogleProtobufNanoExtension_TYPE_STRING 9
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_STRING, jint)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_GROUP(void);
#define ComGoogleProtobufNanoExtension_TYPE_GROUP 10
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_GROUP, jint)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_MESSAGE(void);
#define ComGoogleProtobufNanoExtension_TYPE_MESSAGE 11
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_MESSAGE, jint)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_BYTES(void);
#define ComGoogleProtobufNanoExtension_TYPE_BYTES 12
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_BYTES, jint)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_UINT32(void);
#define ComGoogleProtobufNanoExtension_TYPE_UINT32 13
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_UINT32, jint)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_ENUM(void);
#define ComGoogleProtobufNanoExtension_TYPE_ENUM 14
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_ENUM, jint)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_SFIXED32(void);
#define ComGoogleProtobufNanoExtension_TYPE_SFIXED32 15
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_SFIXED32, jint)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_SFIXED64(void);
#define ComGoogleProtobufNanoExtension_TYPE_SFIXED64 16
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_SFIXED64, jint)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_SINT32(void);
#define ComGoogleProtobufNanoExtension_TYPE_SINT32 17
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_SINT32, jint)

inline jint ComGoogleProtobufNanoExtension_get_TYPE_SINT64(void);
#define ComGoogleProtobufNanoExtension_TYPE_SINT64 18
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoExtension, TYPE_SINT64, jint)

FOUNDATION_EXPORT ComGoogleProtobufNanoExtension *ComGoogleProtobufNanoExtension_createMessageTypedWithInt_withIOSClass_withInt_(jint type, IOSClass *clazz, jint tag);

FOUNDATION_EXPORT ComGoogleProtobufNanoExtension *ComGoogleProtobufNanoExtension_createMessageTypedWithInt_withIOSClass_withLong_(jint type, IOSClass *clazz, jlong tag);

FOUNDATION_EXPORT ComGoogleProtobufNanoExtension *ComGoogleProtobufNanoExtension_createRepeatedMessageTypedWithInt_withIOSClass_withLong_(jint type, IOSClass *clazz, jlong tag);

FOUNDATION_EXPORT ComGoogleProtobufNanoExtension *ComGoogleProtobufNanoExtension_createPrimitiveTypedWithInt_withIOSClass_withLong_(jint type, IOSClass *clazz, jlong tag);

FOUNDATION_EXPORT ComGoogleProtobufNanoExtension *ComGoogleProtobufNanoExtension_createRepeatedPrimitiveTypedWithInt_withIOSClass_withLong_withLong_withLong_(jint type, IOSClass *clazz, jlong tag, jlong nonPackedTag, jlong packedTag);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleProtobufNanoExtension)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleProtobufNanoExtension")
