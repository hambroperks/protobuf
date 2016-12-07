//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/protobuf/javanano/src/main/java/com/google/protobuf/nano/CodedInputByteBufferNano.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/google/protobuf/nano/CodedInputByteBufferNano.h"
#include "com/google/protobuf/nano/InternalNano.h"
#include "com/google/protobuf/nano/InvalidProtocolBufferNanoException.h"
#include "com/google/protobuf/nano/MessageNano.h"
#include "com/google/protobuf/nano/WireFormatNano.h"
#include "java/lang/Boolean.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/System.h"
#include "java/nio/charset/Charset.h"

@interface ComGoogleProtobufNanoCodedInputByteBufferNano () {
 @public
  IOSByteArray *buffer_;
  jint bufferStart_;
  jint bufferSize_;
  jint bufferSizeAfterLimit_;
  jint bufferPos_;
  jint lastTag_;
  /*!
   @brief The absolute position of the end of the current message.
   */
  jint currentLimit_;
  /*!
   @brief See setRecursionLimit()
   */
  jint recursionDepth_;
  jint recursionLimit_;
  /*!
   @brief See setSizeLimit()
   */
  jint sizeLimit_;
}

- (instancetype)initWithByteArray:(IOSByteArray *)buffer
                          withInt:(jint)off
                          withInt:(jint)len;

- (void)recomputeBufferSizeAfterLimit;

@end

J2OBJC_FIELD_SETTER(ComGoogleProtobufNanoCodedInputByteBufferNano, buffer_, IOSByteArray *)

inline jint ComGoogleProtobufNanoCodedInputByteBufferNano_get_DEFAULT_RECURSION_LIMIT();
#define ComGoogleProtobufNanoCodedInputByteBufferNano_DEFAULT_RECURSION_LIMIT 64
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoCodedInputByteBufferNano, DEFAULT_RECURSION_LIMIT, jint)

inline jint ComGoogleProtobufNanoCodedInputByteBufferNano_get_DEFAULT_SIZE_LIMIT();
#define ComGoogleProtobufNanoCodedInputByteBufferNano_DEFAULT_SIZE_LIMIT 67108864
J2OBJC_STATIC_FIELD_CONSTANT(ComGoogleProtobufNanoCodedInputByteBufferNano, DEFAULT_SIZE_LIMIT, jint)

__attribute__((unused)) static void ComGoogleProtobufNanoCodedInputByteBufferNano_initWithByteArray_withInt_withInt_(ComGoogleProtobufNanoCodedInputByteBufferNano *self, IOSByteArray *buffer, jint off, jint len);

__attribute__((unused)) static ComGoogleProtobufNanoCodedInputByteBufferNano *new_ComGoogleProtobufNanoCodedInputByteBufferNano_initWithByteArray_withInt_withInt_(IOSByteArray *buffer, jint off, jint len) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleProtobufNanoCodedInputByteBufferNano *create_ComGoogleProtobufNanoCodedInputByteBufferNano_initWithByteArray_withInt_withInt_(IOSByteArray *buffer, jint off, jint len);

__attribute__((unused)) static void ComGoogleProtobufNanoCodedInputByteBufferNano_recomputeBufferSizeAfterLimit(ComGoogleProtobufNanoCodedInputByteBufferNano *self);

@implementation ComGoogleProtobufNanoCodedInputByteBufferNano

+ (ComGoogleProtobufNanoCodedInputByteBufferNano *)newInstanceWithByteArray:(IOSByteArray *)buf {
  return ComGoogleProtobufNanoCodedInputByteBufferNano_newInstanceWithByteArray_(buf);
}

+ (ComGoogleProtobufNanoCodedInputByteBufferNano *)newInstanceWithByteArray:(IOSByteArray *)buf
                                                                    withInt:(jint)off
                                                                    withInt:(jint)len {
  return ComGoogleProtobufNanoCodedInputByteBufferNano_newInstanceWithByteArray_withInt_withInt_(buf, off, len);
}

- (jint)readTag {
  if ([self isAtEnd]) {
    lastTag_ = 0;
    return 0;
  }
  lastTag_ = [self readRawVarint32];
  if (lastTag_ == 0) {
    @throw ComGoogleProtobufNanoInvalidProtocolBufferNanoException_invalidTag();
  }
  return lastTag_;
}

- (void)checkLastTagWasWithInt:(jint)value {
  if (lastTag_ != value) {
    @throw ComGoogleProtobufNanoInvalidProtocolBufferNanoException_invalidEndTag();
  }
}

- (jboolean)skipFieldWithInt:(jint)tag {
  switch (ComGoogleProtobufNanoWireFormatNano_getTagWireTypeWithInt_(tag)) {
    case ComGoogleProtobufNanoWireFormatNano_WIRETYPE_VARINT:
    [self readInt32];
    return true;
    case ComGoogleProtobufNanoWireFormatNano_WIRETYPE_FIXED64:
    [self readRawLittleEndian64];
    return true;
    case ComGoogleProtobufNanoWireFormatNano_WIRETYPE_LENGTH_DELIMITED:
    [self skipRawBytesWithInt:[self readRawVarint32]];
    return true;
    case ComGoogleProtobufNanoWireFormatNano_WIRETYPE_START_GROUP:
    [self skipMessage];
    [self checkLastTagWasWithInt:ComGoogleProtobufNanoWireFormatNano_makeTagWithInt_withInt_(ComGoogleProtobufNanoWireFormatNano_getTagFieldNumberWithInt_(tag), ComGoogleProtobufNanoWireFormatNano_WIRETYPE_END_GROUP)];
    return true;
    case ComGoogleProtobufNanoWireFormatNano_WIRETYPE_END_GROUP:
    return false;
    case ComGoogleProtobufNanoWireFormatNano_WIRETYPE_FIXED32:
    [self readRawLittleEndian32];
    return true;
    default:
    @throw ComGoogleProtobufNanoInvalidProtocolBufferNanoException_invalidWireType();
  }
}

- (void)skipMessage {
  while (true) {
    jint tag = [self readTag];
    if (tag == 0 || ![self skipFieldWithInt:tag]) {
      return;
    }
  }
}

- (jdouble)readDouble {
  return JavaLangDouble_longBitsToDoubleWithLong_([self readRawLittleEndian64]);
}

- (jfloat)readFloat {
  return JavaLangFloat_intBitsToFloatWithInt_([self readRawLittleEndian32]);
}

- (jlong)readUInt64 {
  return [self readRawVarint64];
}

- (jlong)readInt64 {
  return [self readRawVarint64];
}

- (jint)readInt32 {
  return [self readRawVarint32];
}

- (jlong)readFixed64 {
  return [self readRawLittleEndian64];
}

- (jint)readFixed32 {
  return [self readRawLittleEndian32];
}

- (jboolean)readBool {
  return [self readRawVarint32] != 0;
}

- (NSString *)readString {
  jint size = [self readRawVarint32];
  if (size <= (bufferSize_ - bufferPos_) && size > 0) {
    NSString *result = [NSString stringWithBytes:buffer_ offset:bufferPos_ length:size charset:JreLoadStatic(ComGoogleProtobufNanoInternalNano, UTF_8)];
    bufferPos_ += size;
    return result;
  }
  else {
    return [NSString stringWithBytes:[self readRawBytesWithInt:size] charset:JreLoadStatic(ComGoogleProtobufNanoInternalNano, UTF_8)];
  }
}

- (void)readGroupWithComGoogleProtobufNanoMessageNano:(ComGoogleProtobufNanoMessageNano *)msg
                                              withInt:(jint)fieldNumber {
  if (recursionDepth_ >= recursionLimit_) {
    @throw ComGoogleProtobufNanoInvalidProtocolBufferNanoException_recursionLimitExceeded();
  }
  ++recursionDepth_;
  [((ComGoogleProtobufNanoMessageNano *) nil_chk(msg)) mergeFromWithComGoogleProtobufNanoCodedInputByteBufferNano:self];
  [self checkLastTagWasWithInt:ComGoogleProtobufNanoWireFormatNano_makeTagWithInt_withInt_(fieldNumber, ComGoogleProtobufNanoWireFormatNano_WIRETYPE_END_GROUP)];
  --recursionDepth_;
}

- (void)readMessageWithComGoogleProtobufNanoMessageNano:(ComGoogleProtobufNanoMessageNano *)msg {
  jint length = [self readRawVarint32];
  if (recursionDepth_ >= recursionLimit_) {
    @throw ComGoogleProtobufNanoInvalidProtocolBufferNanoException_recursionLimitExceeded();
  }
  jint oldLimit = [self pushLimitWithInt:length];
  ++recursionDepth_;
  [((ComGoogleProtobufNanoMessageNano *) nil_chk(msg)) mergeFromWithComGoogleProtobufNanoCodedInputByteBufferNano:self];
  [self checkLastTagWasWithInt:0];
  --recursionDepth_;
  [self popLimitWithInt:oldLimit];
}

- (IOSByteArray *)readBytes {
  jint size = [self readRawVarint32];
  if (size <= (bufferSize_ - bufferPos_) && size > 0) {
    IOSByteArray *result = [IOSByteArray arrayWithLength:size];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, bufferPos_, result, 0, size);
    bufferPos_ += size;
    return result;
  }
  else if (size == 0) {
    return JreLoadStatic(ComGoogleProtobufNanoWireFormatNano, EMPTY_BYTES);
  }
  else {
    return [self readRawBytesWithInt:size];
  }
}

- (jint)readUInt32 {
  return [self readRawVarint32];
}

- (jint)readEnum {
  return [self readRawVarint32];
}

- (jint)readSFixed32 {
  return [self readRawLittleEndian32];
}

- (jlong)readSFixed64 {
  return [self readRawLittleEndian64];
}

- (jint)readSInt32 {
  return ComGoogleProtobufNanoCodedInputByteBufferNano_decodeZigZag32WithInt_([self readRawVarint32]);
}

- (jlong)readSInt64 {
  return ComGoogleProtobufNanoCodedInputByteBufferNano_decodeZigZag64WithLong_([self readRawVarint64]);
}

- (jint)readRawVarint32 {
  jbyte tmp = [self readRawByte];
  if (tmp >= 0) {
    return tmp;
  }
  jint result = tmp & (jint) 0x7f;
  if ((tmp = [self readRawByte]) >= 0) {
    result |= JreLShift32(tmp, 7);
  }
  else {
    result |= JreLShift32((tmp & (jint) 0x7f), 7);
    if ((tmp = [self readRawByte]) >= 0) {
      result |= JreLShift32(tmp, 14);
    }
    else {
      result |= JreLShift32((tmp & (jint) 0x7f), 14);
      if ((tmp = [self readRawByte]) >= 0) {
        result |= JreLShift32(tmp, 21);
      }
      else {
        result |= JreLShift32((tmp & (jint) 0x7f), 21);
        result |= JreLShift32((tmp = [self readRawByte]), 28);
        if (tmp < 0) {
          for (jint i = 0; i < 5; i++) {
            if ([self readRawByte] >= 0) {
              return result;
            }
          }
          @throw ComGoogleProtobufNanoInvalidProtocolBufferNanoException_malformedVarint();
        }
      }
    }
  }
  return result;
}

- (jlong)readRawVarint64 {
  jint shift = 0;
  jlong result = 0;
  while (shift < 64) {
    jbyte b = [self readRawByte];
    result |= JreLShift64((jlong) (b & (jint) 0x7F), shift);
    if ((b & (jint) 0x80) == 0) {
      return result;
    }
    shift += 7;
  }
  @throw ComGoogleProtobufNanoInvalidProtocolBufferNanoException_malformedVarint();
}

- (jint)readRawLittleEndian32 {
  jbyte b1 = [self readRawByte];
  jbyte b2 = [self readRawByte];
  jbyte b3 = [self readRawByte];
  jbyte b4 = [self readRawByte];
  return ((b1 & (jint) 0xff)) | (JreLShift32((b2 & (jint) 0xff), 8)) | (JreLShift32((b3 & (jint) 0xff), 16)) | (JreLShift32((b4 & (jint) 0xff), 24));
}

- (jlong)readRawLittleEndian64 {
  jbyte b1 = [self readRawByte];
  jbyte b2 = [self readRawByte];
  jbyte b3 = [self readRawByte];
  jbyte b4 = [self readRawByte];
  jbyte b5 = [self readRawByte];
  jbyte b6 = [self readRawByte];
  jbyte b7 = [self readRawByte];
  jbyte b8 = [self readRawByte];
  return (((jlong) b1 & (jint) 0xff)) | (JreLShift64(((jlong) b2 & (jint) 0xff), 8)) | (JreLShift64(((jlong) b3 & (jint) 0xff), 16)) | (JreLShift64(((jlong) b4 & (jint) 0xff), 24)) | (JreLShift64(((jlong) b5 & (jint) 0xff), 32)) | (JreLShift64(((jlong) b6 & (jint) 0xff), 40)) | (JreLShift64(((jlong) b7 & (jint) 0xff), 48)) | (JreLShift64(((jlong) b8 & (jint) 0xff), 56));
}

+ (jint)decodeZigZag32WithInt:(jint)n {
  return ComGoogleProtobufNanoCodedInputByteBufferNano_decodeZigZag32WithInt_(n);
}

+ (jlong)decodeZigZag64WithLong:(jlong)n {
  return ComGoogleProtobufNanoCodedInputByteBufferNano_decodeZigZag64WithLong_(n);
}

- (instancetype)initWithByteArray:(IOSByteArray *)buffer
                          withInt:(jint)off
                          withInt:(jint)len {
  ComGoogleProtobufNanoCodedInputByteBufferNano_initWithByteArray_withInt_withInt_(self, buffer, off, len);
  return self;
}

- (jint)setRecursionLimitWithInt:(jint)limit {
  if (limit < 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I", @"Recursion limit cannot be negative: ", limit));
  }
  jint oldLimit = recursionLimit_;
  recursionLimit_ = limit;
  return oldLimit;
}

- (jint)setSizeLimitWithInt:(jint)limit {
  if (limit < 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I", @"Size limit cannot be negative: ", limit));
  }
  jint oldLimit = sizeLimit_;
  sizeLimit_ = limit;
  return oldLimit;
}

- (void)resetSizeCounter {
}

- (jint)pushLimitWithInt:(jint)byteLimit {
  if (byteLimit < 0) {
    @throw ComGoogleProtobufNanoInvalidProtocolBufferNanoException_negativeSize();
  }
  byteLimit += bufferPos_;
  jint oldLimit = currentLimit_;
  if (byteLimit > oldLimit) {
    @throw ComGoogleProtobufNanoInvalidProtocolBufferNanoException_truncatedMessage();
  }
  currentLimit_ = byteLimit;
  ComGoogleProtobufNanoCodedInputByteBufferNano_recomputeBufferSizeAfterLimit(self);
  return oldLimit;
}

- (void)recomputeBufferSizeAfterLimit {
  ComGoogleProtobufNanoCodedInputByteBufferNano_recomputeBufferSizeAfterLimit(self);
}

- (void)popLimitWithInt:(jint)oldLimit {
  currentLimit_ = oldLimit;
  ComGoogleProtobufNanoCodedInputByteBufferNano_recomputeBufferSizeAfterLimit(self);
}

- (jint)getBytesUntilLimit {
  if (currentLimit_ == JavaLangInteger_MAX_VALUE) {
    return -1;
  }
  jint currentAbsolutePosition = bufferPos_;
  return currentLimit_ - currentAbsolutePosition;
}

- (jboolean)isAtEnd {
  return bufferPos_ == bufferSize_;
}

- (jint)getPosition {
  return bufferPos_ - bufferStart_;
}

- (IOSByteArray *)getDataWithInt:(jint)offset
                         withInt:(jint)length {
  if (length == 0) {
    return JreLoadStatic(ComGoogleProtobufNanoWireFormatNano, EMPTY_BYTES);
  }
  IOSByteArray *copy_ = [IOSByteArray arrayWithLength:length];
  jint start = bufferStart_ + offset;
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, start, copy_, 0, length);
  return copy_;
}

- (void)rewindToPositionWithInt:(jint)position {
  if (position > bufferPos_ - bufferStart_) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$I", @"Position ", position, @" is beyond current ", (bufferPos_ - bufferStart_)));
  }
  if (position < 0) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I", @"Bad position ", position));
  }
  bufferPos_ = bufferStart_ + position;
}

- (jbyte)readRawByte {
  if (bufferPos_ == bufferSize_) {
    @throw ComGoogleProtobufNanoInvalidProtocolBufferNanoException_truncatedMessage();
  }
  return IOSByteArray_Get(nil_chk(buffer_), bufferPos_++);
}

- (IOSByteArray *)readRawBytesWithInt:(jint)size {
  if (size < 0) {
    @throw ComGoogleProtobufNanoInvalidProtocolBufferNanoException_negativeSize();
  }
  if (bufferPos_ + size > currentLimit_) {
    [self skipRawBytesWithInt:currentLimit_ - bufferPos_];
    @throw ComGoogleProtobufNanoInvalidProtocolBufferNanoException_truncatedMessage();
  }
  if (size <= bufferSize_ - bufferPos_) {
    IOSByteArray *bytes = [IOSByteArray arrayWithLength:size];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(buffer_, bufferPos_, bytes, 0, size);
    bufferPos_ += size;
    return bytes;
  }
  else {
    @throw ComGoogleProtobufNanoInvalidProtocolBufferNanoException_truncatedMessage();
  }
}

- (void)skipRawBytesWithInt:(jint)size {
  if (size < 0) {
    @throw ComGoogleProtobufNanoInvalidProtocolBufferNanoException_negativeSize();
  }
  if (bufferPos_ + size > currentLimit_) {
    [self skipRawBytesWithInt:currentLimit_ - bufferPos_];
    @throw ComGoogleProtobufNanoInvalidProtocolBufferNanoException_truncatedMessage();
  }
  if (size <= bufferSize_ - bufferPos_) {
    bufferPos_ += size;
  }
  else {
    @throw ComGoogleProtobufNanoInvalidProtocolBufferNanoException_truncatedMessage();
  }
}

- (id)readPrimitiveFieldWithInt:(jint)type {
  switch (type) {
    case ComGoogleProtobufNanoInternalNano_TYPE_DOUBLE:
    return JavaLangDouble_valueOfWithDouble_([self readDouble]);
    case ComGoogleProtobufNanoInternalNano_TYPE_FLOAT:
    return JavaLangFloat_valueOfWithFloat_([self readFloat]);
    case ComGoogleProtobufNanoInternalNano_TYPE_INT64:
    return JavaLangLong_valueOfWithLong_([self readInt64]);
    case ComGoogleProtobufNanoInternalNano_TYPE_UINT64:
    return JavaLangLong_valueOfWithLong_([self readUInt64]);
    case ComGoogleProtobufNanoInternalNano_TYPE_INT32:
    return JavaLangInteger_valueOfWithInt_([self readInt32]);
    case ComGoogleProtobufNanoInternalNano_TYPE_FIXED64:
    return JavaLangLong_valueOfWithLong_([self readFixed64]);
    case ComGoogleProtobufNanoInternalNano_TYPE_FIXED32:
    return JavaLangInteger_valueOfWithInt_([self readFixed32]);
    case ComGoogleProtobufNanoInternalNano_TYPE_BOOL:
    return JavaLangBoolean_valueOfWithBoolean_([self readBool]);
    case ComGoogleProtobufNanoInternalNano_TYPE_STRING:
    return [self readString];
    case ComGoogleProtobufNanoInternalNano_TYPE_BYTES:
    return [self readBytes];
    case ComGoogleProtobufNanoInternalNano_TYPE_UINT32:
    return JavaLangInteger_valueOfWithInt_([self readUInt32]);
    case ComGoogleProtobufNanoInternalNano_TYPE_ENUM:
    return JavaLangInteger_valueOfWithInt_([self readEnum]);
    case ComGoogleProtobufNanoInternalNano_TYPE_SFIXED32:
    return JavaLangInteger_valueOfWithInt_([self readSFixed32]);
    case ComGoogleProtobufNanoInternalNano_TYPE_SFIXED64:
    return JavaLangLong_valueOfWithLong_([self readSFixed64]);
    case ComGoogleProtobufNanoInternalNano_TYPE_SINT32:
    return JavaLangInteger_valueOfWithInt_([self readSInt32]);
    case ComGoogleProtobufNanoInternalNano_TYPE_SINT64:
    return JavaLangLong_valueOfWithLong_([self readSInt64]);
    default:
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I", @"Unknown type ", type));
  }
}

- (void)dealloc {
  RELEASE_(buffer_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LComGoogleProtobufNanoCodedInputByteBufferNano;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LComGoogleProtobufNanoCodedInputByteBufferNano;", 0x9, 0, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 5, 6, -1, -1, -1 },
    { NULL, "Z", 0x1, 7, 5, 3, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 8, 9, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 10, 11, 3, -1, -1, -1 },
    { NULL, "[B", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "I", 0x9, 12, 5, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 13, 14, -1, -1, -1, -1 },
    { NULL, NULL, 0x2, -1, 2, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 15, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 16, 5, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 17, 5, 6, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 18, 5, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "[B", 0x1, 19, 20, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 21, 5, -1, -1, -1, -1 },
    { NULL, "B", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "[B", 0x1, 22, 5, 3, -1, -1, -1 },
    { NULL, "V", 0x1, 23, 5, 3, -1, -1, -1 },
    { NULL, "LNSObject;", 0x0, 24, 5, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(newInstanceWithByteArray:);
  methods[1].selector = @selector(newInstanceWithByteArray:withInt:withInt:);
  methods[2].selector = @selector(readTag);
  methods[3].selector = @selector(checkLastTagWasWithInt:);
  methods[4].selector = @selector(skipFieldWithInt:);
  methods[5].selector = @selector(skipMessage);
  methods[6].selector = @selector(readDouble);
  methods[7].selector = @selector(readFloat);
  methods[8].selector = @selector(readUInt64);
  methods[9].selector = @selector(readInt64);
  methods[10].selector = @selector(readInt32);
  methods[11].selector = @selector(readFixed64);
  methods[12].selector = @selector(readFixed32);
  methods[13].selector = @selector(readBool);
  methods[14].selector = @selector(readString);
  methods[15].selector = @selector(readGroupWithComGoogleProtobufNanoMessageNano:withInt:);
  methods[16].selector = @selector(readMessageWithComGoogleProtobufNanoMessageNano:);
  methods[17].selector = @selector(readBytes);
  methods[18].selector = @selector(readUInt32);
  methods[19].selector = @selector(readEnum);
  methods[20].selector = @selector(readSFixed32);
  methods[21].selector = @selector(readSFixed64);
  methods[22].selector = @selector(readSInt32);
  methods[23].selector = @selector(readSInt64);
  methods[24].selector = @selector(readRawVarint32);
  methods[25].selector = @selector(readRawVarint64);
  methods[26].selector = @selector(readRawLittleEndian32);
  methods[27].selector = @selector(readRawLittleEndian64);
  methods[28].selector = @selector(decodeZigZag32WithInt:);
  methods[29].selector = @selector(decodeZigZag64WithLong:);
  methods[30].selector = @selector(initWithByteArray:withInt:withInt:);
  methods[31].selector = @selector(setRecursionLimitWithInt:);
  methods[32].selector = @selector(setSizeLimitWithInt:);
  methods[33].selector = @selector(resetSizeCounter);
  methods[34].selector = @selector(pushLimitWithInt:);
  methods[35].selector = @selector(recomputeBufferSizeAfterLimit);
  methods[36].selector = @selector(popLimitWithInt:);
  methods[37].selector = @selector(getBytesUntilLimit);
  methods[38].selector = @selector(isAtEnd);
  methods[39].selector = @selector(getPosition);
  methods[40].selector = @selector(getDataWithInt:withInt:);
  methods[41].selector = @selector(rewindToPositionWithInt:);
  methods[42].selector = @selector(readRawByte);
  methods[43].selector = @selector(readRawBytesWithInt:);
  methods[44].selector = @selector(skipRawBytesWithInt:);
  methods[45].selector = @selector(readPrimitiveFieldWithInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "buffer_", "[B", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "bufferStart_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "bufferSize_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "bufferSizeAfterLimit_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "bufferPos_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "lastTag_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "currentLimit_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "recursionDepth_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "recursionLimit_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "sizeLimit_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "DEFAULT_RECURSION_LIMIT", "I", .constantValue.asInt = ComGoogleProtobufNanoCodedInputByteBufferNano_DEFAULT_RECURSION_LIMIT, 0x1a, -1, -1, -1, -1 },
    { "DEFAULT_SIZE_LIMIT", "I", .constantValue.asInt = ComGoogleProtobufNanoCodedInputByteBufferNano_DEFAULT_SIZE_LIMIT, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "newInstance", "[B", "[BII", "LJavaIoIOException;", "checkLastTagWas", "I", "LComGoogleProtobufNanoInvalidProtocolBufferNanoException;", "skipField", "readGroup", "LComGoogleProtobufNanoMessageNano;I", "readMessage", "LComGoogleProtobufNanoMessageNano;", "decodeZigZag32", "decodeZigZag64", "J", "setRecursionLimit", "setSizeLimit", "pushLimit", "popLimit", "getData", "II", "rewindToPosition", "readRawBytes", "skipRawBytes", "readPrimitiveField" };
  static const J2ObjcClassInfo _ComGoogleProtobufNanoCodedInputByteBufferNano = { "CodedInputByteBufferNano", "com.google.protobuf.nano", ptrTable, methods, fields, 7, 0x11, 46, 12, -1, -1, -1, -1, -1 };
  return &_ComGoogleProtobufNanoCodedInputByteBufferNano;
}

@end

ComGoogleProtobufNanoCodedInputByteBufferNano *ComGoogleProtobufNanoCodedInputByteBufferNano_newInstanceWithByteArray_(IOSByteArray *buf) {
  ComGoogleProtobufNanoCodedInputByteBufferNano_initialize();
  return ComGoogleProtobufNanoCodedInputByteBufferNano_newInstanceWithByteArray_withInt_withInt_(buf, 0, ((IOSByteArray *) nil_chk(buf))->size_);
}

ComGoogleProtobufNanoCodedInputByteBufferNano *ComGoogleProtobufNanoCodedInputByteBufferNano_newInstanceWithByteArray_withInt_withInt_(IOSByteArray *buf, jint off, jint len) {
  ComGoogleProtobufNanoCodedInputByteBufferNano_initialize();
  return create_ComGoogleProtobufNanoCodedInputByteBufferNano_initWithByteArray_withInt_withInt_(buf, off, len);
}

jint ComGoogleProtobufNanoCodedInputByteBufferNano_decodeZigZag32WithInt_(jint n) {
  ComGoogleProtobufNanoCodedInputByteBufferNano_initialize();
  return (JreURShift32(n, 1)) ^ -(n & 1);
}

jlong ComGoogleProtobufNanoCodedInputByteBufferNano_decodeZigZag64WithLong_(jlong n) {
  ComGoogleProtobufNanoCodedInputByteBufferNano_initialize();
  return (JreURShift64(n, 1)) ^ -(n & 1);
}

void ComGoogleProtobufNanoCodedInputByteBufferNano_initWithByteArray_withInt_withInt_(ComGoogleProtobufNanoCodedInputByteBufferNano *self, IOSByteArray *buffer, jint off, jint len) {
  NSObject_init(self);
  self->currentLimit_ = JavaLangInteger_MAX_VALUE;
  self->recursionLimit_ = ComGoogleProtobufNanoCodedInputByteBufferNano_DEFAULT_RECURSION_LIMIT;
  self->sizeLimit_ = ComGoogleProtobufNanoCodedInputByteBufferNano_DEFAULT_SIZE_LIMIT;
  JreStrongAssign(&self->buffer_, buffer);
  self->bufferStart_ = off;
  self->bufferSize_ = off + len;
  self->bufferPos_ = off;
}

ComGoogleProtobufNanoCodedInputByteBufferNano *new_ComGoogleProtobufNanoCodedInputByteBufferNano_initWithByteArray_withInt_withInt_(IOSByteArray *buffer, jint off, jint len) {
  J2OBJC_NEW_IMPL(ComGoogleProtobufNanoCodedInputByteBufferNano, initWithByteArray_withInt_withInt_, buffer, off, len)
}

ComGoogleProtobufNanoCodedInputByteBufferNano *create_ComGoogleProtobufNanoCodedInputByteBufferNano_initWithByteArray_withInt_withInt_(IOSByteArray *buffer, jint off, jint len) {
  J2OBJC_CREATE_IMPL(ComGoogleProtobufNanoCodedInputByteBufferNano, initWithByteArray_withInt_withInt_, buffer, off, len)
}

void ComGoogleProtobufNanoCodedInputByteBufferNano_recomputeBufferSizeAfterLimit(ComGoogleProtobufNanoCodedInputByteBufferNano *self) {
  self->bufferSize_ += self->bufferSizeAfterLimit_;
  jint bufferEnd = self->bufferSize_;
  if (bufferEnd > self->currentLimit_) {
    self->bufferSizeAfterLimit_ = bufferEnd - self->currentLimit_;
    self->bufferSize_ -= self->bufferSizeAfterLimit_;
  }
  else {
    self->bufferSizeAfterLimit_ = 0;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleProtobufNanoCodedInputByteBufferNano)
