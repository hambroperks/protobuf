//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/protobuf/javanano/src/main/java/com/google/protobuf/nano/CodedInputByteBufferNano.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleProtobufNanoCodedInputByteBufferNano")
#ifdef RESTRICT_ComGoogleProtobufNanoCodedInputByteBufferNano
#define INCLUDE_ALL_ComGoogleProtobufNanoCodedInputByteBufferNano 0
#else
#define INCLUDE_ALL_ComGoogleProtobufNanoCodedInputByteBufferNano 1
#endif
#undef RESTRICT_ComGoogleProtobufNanoCodedInputByteBufferNano

#if !defined (ComGoogleProtobufNanoCodedInputByteBufferNano_) && (INCLUDE_ALL_ComGoogleProtobufNanoCodedInputByteBufferNano || defined(INCLUDE_ComGoogleProtobufNanoCodedInputByteBufferNano))
#define ComGoogleProtobufNanoCodedInputByteBufferNano_

@class ComGoogleProtobufNanoMessageNano;
@class IOSByteArray;

/*!
 @brief Reads and decodes protocol message fields.
 This class contains two kinds of methods:  methods that read specific
  protocol message constructs and field types (e.g. <code>readTag()</code> and 
 <code>readInt32()</code>) and methods that read low-level values (e.g. 
 <code>readRawVarint32()</code> and <code>readRawBytes</code>).  If you are reading
  encoded protocol messages, you should use the former methods, but if you are
  reading some other format of your own design, use the latter.
 @author kenton@@google.com Kenton Varda
 */
@interface ComGoogleProtobufNanoCodedInputByteBufferNano : NSObject

#pragma mark Public

/*!
 @brief Verifies that the last call to readTag() returned the given tag value.
 This is used to verify that a nested group ended with the correct
  end tag.
 @throw InvalidProtocolBufferNanoException<code>value</code> does not match the
                                         last tag.
 */
- (void)checkLastTagWasWithInt:(jint)value;

/*!
 @brief Decode a ZigZag-encoded 32-bit value.ZigZag encodes signed integers
  into values that can be efficiently encoded with varint.
 (Otherwise,
  negative values must be sign-extended to 64 bits to be varint encoded,
  thus always taking 10 bytes on the wire.)
 @param n An unsigned 32-bit integer, stored in a signed int because           Java has no explicit unsigned support.
 @return A signed 32-bit integer.
 */
+ (jint)decodeZigZag32WithInt:(jint)n;

/*!
 @brief Decode a ZigZag-encoded 64-bit value.ZigZag encodes signed integers
  into values that can be efficiently encoded with varint.
 (Otherwise,
  negative values must be sign-extended to 64 bits to be varint encoded,
  thus always taking 10 bytes on the wire.)
 @param n An unsigned 64-bit integer, stored in a signed int because           Java has no explicit unsigned support.
 @return A signed 64-bit integer.
 */
+ (jlong)decodeZigZag64WithLong:(jlong)n;

/*!
 @brief Returns the number of bytes to be read before the current limit.
 If no limit is set, returns -1.
 */
- (jint)getBytesUntilLimit;

/*!
 @brief Retrieves a subset of data in the buffer.The returned array is not backed by the original
  buffer array.
 @param offset the position (relative to the buffer start position) to start at.
 @param length the number of bytes to retrieve.
 */
- (IOSByteArray *)getDataWithInt:(jint)offset
                         withInt:(jint)length;

/*!
 @brief Get current position in buffer relative to beginning offset.
 */
- (jint)getPosition;

/*!
 @brief Returns true if the stream has reached the end of the input.This is the
  case if either the end of the underlying input source has been reached or
  if the stream has reached a limit created using <code>pushLimit(int)</code>.
 */
- (jboolean)isAtEnd;

/*!
 @brief Create a new CodedInputStream wrapping the given byte array.
 */
+ (ComGoogleProtobufNanoCodedInputByteBufferNano *)newInstanceWithByteArray:(IOSByteArray *)buf OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Create a new CodedInputStream wrapping the given byte array slice.
 */
+ (ComGoogleProtobufNanoCodedInputByteBufferNano *)newInstanceWithByteArray:(IOSByteArray *)buf
                                                                    withInt:(jint)off
                                                                    withInt:(jint)len OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Discards the current limit, returning to the previous limit.
 @param oldLimit The old limit, as returned by <code>pushLimit</code> .
 */
- (void)popLimitWithInt:(jint)oldLimit;

/*!
 @brief Sets <code>currentLimit</code> to (current position) + <code>byteLimit</code>.This
  is called when descending into a length-delimited embedded message.
 @return the old limit.
 */
- (jint)pushLimitWithInt:(jint)byteLimit;

/*!
 @brief Read a <code>bool</code> field value from the stream.
 */
- (jboolean)readBool;

/*!
 @brief Read a <code>bytes</code> field value from the stream.
 */
- (IOSByteArray *)readBytes;

/*!
 @brief Read a <code>double</code> field value from the stream.
 */
- (jdouble)readDouble;

/*!
 @brief Read an enum field value from the stream.Caller is responsible
  for converting the numeric value to an actual enum.
 */
- (jint)readEnum;

/*!
 @brief Read a <code>fixed32</code> field value from the stream.
 */
- (jint)readFixed32;

/*!
 @brief Read a <code>fixed64</code> field value from the stream.
 */
- (jlong)readFixed64;

/*!
 @brief Read a <code>float</code> field value from the stream.
 */
- (jfloat)readFloat;

/*!
 @brief Read a <code>group</code> field value from the stream.
 */
- (void)readGroupWithComGoogleProtobufNanoMessageNano:(ComGoogleProtobufNanoMessageNano *)msg
                                              withInt:(jint)fieldNumber;

/*!
 @brief Read an <code>int32</code> field value from the stream.
 */
- (jint)readInt32;

/*!
 @brief Read an <code>int64</code> field value from the stream.
 */
- (jlong)readInt64;

- (void)readMessageWithComGoogleProtobufNanoMessageNano:(ComGoogleProtobufNanoMessageNano *)msg;

/*!
 @brief Read one byte from the input.
 @throw InvalidProtocolBufferNanoExceptionThe end of the stream or the current
                                         limit was reached.
 */
- (jbyte)readRawByte;

/*!
 @brief Read a fixed size of bytes from the input.
 @throw InvalidProtocolBufferNanoExceptionThe end of the stream or the current
                                         limit was reached.
 */
- (IOSByteArray *)readRawBytesWithInt:(jint)size;

/*!
 @brief Read a 32-bit little-endian integer from the stream.
 */
- (jint)readRawLittleEndian32;

/*!
 @brief Read a 64-bit little-endian integer from the stream.
 */
- (jlong)readRawLittleEndian64;

/*!
 @brief Read a raw Varint from the stream.If larger than 32 bits, discard the
  upper bits.
 */
- (jint)readRawVarint32;

/*!
 @brief Read a raw Varint from the stream.
 */
- (jlong)readRawVarint64;

/*!
 @brief Read an <code>sfixed32</code> field value from the stream.
 */
- (jint)readSFixed32;

/*!
 @brief Read an <code>sfixed64</code> field value from the stream.
 */
- (jlong)readSFixed64;

/*!
 @brief Read an <code>sint32</code> field value from the stream.
 */
- (jint)readSInt32;

/*!
 @brief Read an <code>sint64</code> field value from the stream.
 */
- (jlong)readSInt64;

/*!
 @brief Read a <code>string</code> field value from the stream.
 */
- (NSString *)readString;

/*!
 @brief Attempt to read a field tag, returning zero if we have reached EOF.
 Protocol message parsers use this to read tags, since a protocol message
  may legally end wherever a tag occurs, and zero is not a valid tag number.
 */
- (jint)readTag;

/*!
 @brief Read a <code>uint32</code> field value from the stream.
 */
- (jint)readUInt32;

/*!
 @brief Read a <code>uint64</code> field value from the stream.
 */
- (jlong)readUInt64;

/*!
 @brief Resets the current size counter to zero (see <code>setSizeLimit(int)</code>).
 */
- (void)resetSizeCounter;

/*!
 @brief Rewind to previous position.Cannot go forward.
 */
- (void)rewindToPositionWithInt:(jint)position;

/*!
 @brief Set the maximum message recursion depth.In order to prevent malicious
  messages from causing stack overflows, <code>CodedInputStream</code> limits
  how deeply messages may be nested.
 The default limit is 64.
 @return the old limit.
 */
- (jint)setRecursionLimitWithInt:(jint)limit;

/*!
 @brief Set the maximum message size.In order to prevent malicious
  messages from exhausting memory or causing integer overflows, 
 <code>CodedInputStream</code> limits how large a message may be.
 The default limit is 64MB.  You should set this limit as small
  as you can without harming your app's functionality.  Note that
  size limits only apply when reading from an <code>InputStream</code>, not
  when constructed around a raw byte array. 
 <p>
  If you want to read several messages from a single CodedInputStream, you
  could call <code>resetSizeCounter()</code> after each one to avoid hitting the
  size limit.
 @return the old limit.
 */
- (jint)setSizeLimitWithInt:(jint)limit;

/*!
 @brief Reads and discards a single field, given its tag value.
 @return <code>false</code> if the tag is an endgroup tag, in which case
          nothing is skipped.  Otherwise, returns <code>true</code>.
 */
- (jboolean)skipFieldWithInt:(jint)tag;

/*!
 @brief Reads and discards an entire message.This will read either until EOF
  or until an endgroup tag, whichever comes first.
 */
- (void)skipMessage;

/*!
 @brief Reads and discards <code>size</code> bytes.
 @throw InvalidProtocolBufferNanoExceptionThe end of the stream or the current
                                         limit was reached.
 */
- (void)skipRawBytesWithInt:(jint)size;

#pragma mark Package-Private

- (id)readPrimitiveFieldWithInt:(jint)type;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleProtobufNanoCodedInputByteBufferNano)

FOUNDATION_EXPORT ComGoogleProtobufNanoCodedInputByteBufferNano *ComGoogleProtobufNanoCodedInputByteBufferNano_newInstanceWithByteArray_(IOSByteArray *buf);

FOUNDATION_EXPORT ComGoogleProtobufNanoCodedInputByteBufferNano *ComGoogleProtobufNanoCodedInputByteBufferNano_newInstanceWithByteArray_withInt_withInt_(IOSByteArray *buf, jint off, jint len);

FOUNDATION_EXPORT jint ComGoogleProtobufNanoCodedInputByteBufferNano_decodeZigZag32WithInt_(jint n);

FOUNDATION_EXPORT jlong ComGoogleProtobufNanoCodedInputByteBufferNano_decodeZigZag64WithLong_(jlong n);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleProtobufNanoCodedInputByteBufferNano)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleProtobufNanoCodedInputByteBufferNano")
