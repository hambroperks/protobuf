//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/protobuf/javanano/src/main/java/com/google/protobuf/nano/FieldArray.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleProtobufNanoFieldArray")
#ifdef RESTRICT_ComGoogleProtobufNanoFieldArray
#define INCLUDE_ALL_ComGoogleProtobufNanoFieldArray 0
#else
#define INCLUDE_ALL_ComGoogleProtobufNanoFieldArray 1
#endif
#undef RESTRICT_ComGoogleProtobufNanoFieldArray

#if !defined (ComGoogleProtobufNanoFieldArray_) && (INCLUDE_ALL_ComGoogleProtobufNanoFieldArray || defined(INCLUDE_ComGoogleProtobufNanoFieldArray))
#define ComGoogleProtobufNanoFieldArray_

@class ComGoogleProtobufNanoFieldData;

/*!
 @brief A custom version of <code>android.util.SparseArray</code> with the minimal API
 for storing <code>FieldData</code> objects.
 <p>This class is an internal implementation detail of nano and should not
 be called directly by clients.
 Based on <code>android.support.v4.util.SpareArrayCompat</code>.
 */
@interface ComGoogleProtobufNanoFieldArray : NSObject < NSCopying >

#pragma mark Public

- (ComGoogleProtobufNanoFieldArray *)clone;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (jboolean)isEmpty;

#pragma mark Package-Private

/*!
 @brief Creates a new FieldArray containing no fields.
 */
- (instancetype)init;

/*!
 @brief Creates a new FieldArray containing no mappings that will not
 require any additional memory allocation to store the specified
 number of mappings.
 */
- (instancetype)initWithInt:(jint)initialCapacity;

/*!
 @brief Given an index in the range <code>0...size()-1</code>, returns
 the value from the <code>index</code>th key-value mapping that this
 FieldArray stores.
 */
- (ComGoogleProtobufNanoFieldData *)dataAtWithInt:(jint)index;

/*!
 @brief Gets the FieldData mapped from the specified fieldNumber, or <code>null</code>
 if no such mapping has been made.
 */
- (ComGoogleProtobufNanoFieldData *)getWithInt:(jint)fieldNumber;

/*!
 @brief Adds a mapping from the specified fieldNumber to the specified data,
 replacing the previous mapping if there was one.
 */
- (void)putWithInt:(jint)fieldNumber
withComGoogleProtobufNanoFieldData:(ComGoogleProtobufNanoFieldData *)data;

/*!
 @brief Removes the data from the specified fieldNumber, if there was any.
 */
- (void)removeWithInt:(jint)fieldNumber;

/*!
 @brief Returns the number of key-value mappings that this FieldArray
 currently stores.
 */
- (jint)size;

@end

J2OBJC_STATIC_INIT(ComGoogleProtobufNanoFieldArray)

FOUNDATION_EXPORT void ComGoogleProtobufNanoFieldArray_init(ComGoogleProtobufNanoFieldArray *self);

FOUNDATION_EXPORT ComGoogleProtobufNanoFieldArray *new_ComGoogleProtobufNanoFieldArray_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleProtobufNanoFieldArray *create_ComGoogleProtobufNanoFieldArray_init();

FOUNDATION_EXPORT void ComGoogleProtobufNanoFieldArray_initWithInt_(ComGoogleProtobufNanoFieldArray *self, jint initialCapacity);

FOUNDATION_EXPORT ComGoogleProtobufNanoFieldArray *new_ComGoogleProtobufNanoFieldArray_initWithInt_(jint initialCapacity) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT ComGoogleProtobufNanoFieldArray *create_ComGoogleProtobufNanoFieldArray_initWithInt_(jint initialCapacity);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleProtobufNanoFieldArray)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleProtobufNanoFieldArray")
