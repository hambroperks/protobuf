//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/protobuf/javanano/src/main/java/com/google/protobuf/nano/WireFormatNano.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/google/protobuf/nano/CodedInputByteBufferNano.h"
#include "com/google/protobuf/nano/WireFormatNano.h"

@interface ComGoogleProtobufNanoWireFormatNano ()

- (instancetype)init;

@end

__attribute__((unused)) static void ComGoogleProtobufNanoWireFormatNano_init(ComGoogleProtobufNanoWireFormatNano *self);

__attribute__((unused)) static ComGoogleProtobufNanoWireFormatNano *new_ComGoogleProtobufNanoWireFormatNano_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static ComGoogleProtobufNanoWireFormatNano *create_ComGoogleProtobufNanoWireFormatNano_init(void);

J2OBJC_INITIALIZED_DEFN(ComGoogleProtobufNanoWireFormatNano)

IOSIntArray *ComGoogleProtobufNanoWireFormatNano_EMPTY_INT_ARRAY;
IOSLongArray *ComGoogleProtobufNanoWireFormatNano_EMPTY_LONG_ARRAY;
IOSFloatArray *ComGoogleProtobufNanoWireFormatNano_EMPTY_FLOAT_ARRAY;
IOSDoubleArray *ComGoogleProtobufNanoWireFormatNano_EMPTY_DOUBLE_ARRAY;
IOSBooleanArray *ComGoogleProtobufNanoWireFormatNano_EMPTY_BOOLEAN_ARRAY;
IOSObjectArray *ComGoogleProtobufNanoWireFormatNano_EMPTY_STRING_ARRAY;
IOSObjectArray *ComGoogleProtobufNanoWireFormatNano_EMPTY_BYTES_ARRAY;
IOSByteArray *ComGoogleProtobufNanoWireFormatNano_EMPTY_BYTES;

@implementation ComGoogleProtobufNanoWireFormatNano

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleProtobufNanoWireFormatNano_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jint)getTagWireTypeWithInt:(jint)tag {
  return ComGoogleProtobufNanoWireFormatNano_getTagWireTypeWithInt_(tag);
}

+ (jint)getTagFieldNumberWithInt:(jint)tag {
  return ComGoogleProtobufNanoWireFormatNano_getTagFieldNumberWithInt_(tag);
}

+ (jint)makeTagWithInt:(jint)fieldNumber
               withInt:(jint)wireType {
  return ComGoogleProtobufNanoWireFormatNano_makeTagWithInt_withInt_(fieldNumber, wireType);
}

+ (jboolean)parseUnknownFieldWithComGoogleProtobufNanoCodedInputByteBufferNano:(ComGoogleProtobufNanoCodedInputByteBufferNano *)input
                                                                       withInt:(jint)tag {
  return ComGoogleProtobufNanoWireFormatNano_parseUnknownFieldWithComGoogleProtobufNanoCodedInputByteBufferNano_withInt_(input, tag);
}

+ (jint)getRepeatedFieldArrayLengthWithComGoogleProtobufNanoCodedInputByteBufferNano:(ComGoogleProtobufNanoCodedInputByteBufferNano *)input
                                                                             withInt:(jint)tag {
  return ComGoogleProtobufNanoWireFormatNano_getRepeatedFieldArrayLengthWithComGoogleProtobufNanoCodedInputByteBufferNano_withInt_(input, tag);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x8, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 2, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x8, 3, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 5, 6, 7, -1, -1, -1 },
    { NULL, "I", 0x19, 8, 6, 7, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getTagWireTypeWithInt:);
  methods[2].selector = @selector(getTagFieldNumberWithInt:);
  methods[3].selector = @selector(makeTagWithInt:withInt:);
  methods[4].selector = @selector(parseUnknownFieldWithComGoogleProtobufNanoCodedInputByteBufferNano:withInt:);
  methods[5].selector = @selector(getRepeatedFieldArrayLengthWithComGoogleProtobufNanoCodedInputByteBufferNano:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "WIRETYPE_VARINT", "I", .constantValue.asInt = ComGoogleProtobufNanoWireFormatNano_WIRETYPE_VARINT, 0x18, -1, -1, -1, -1 },
    { "WIRETYPE_FIXED64", "I", .constantValue.asInt = ComGoogleProtobufNanoWireFormatNano_WIRETYPE_FIXED64, 0x18, -1, -1, -1, -1 },
    { "WIRETYPE_LENGTH_DELIMITED", "I", .constantValue.asInt = ComGoogleProtobufNanoWireFormatNano_WIRETYPE_LENGTH_DELIMITED, 0x18, -1, -1, -1, -1 },
    { "WIRETYPE_START_GROUP", "I", .constantValue.asInt = ComGoogleProtobufNanoWireFormatNano_WIRETYPE_START_GROUP, 0x18, -1, -1, -1, -1 },
    { "WIRETYPE_END_GROUP", "I", .constantValue.asInt = ComGoogleProtobufNanoWireFormatNano_WIRETYPE_END_GROUP, 0x18, -1, -1, -1, -1 },
    { "WIRETYPE_FIXED32", "I", .constantValue.asInt = ComGoogleProtobufNanoWireFormatNano_WIRETYPE_FIXED32, 0x18, -1, -1, -1, -1 },
    { "TAG_TYPE_BITS", "I", .constantValue.asInt = ComGoogleProtobufNanoWireFormatNano_TAG_TYPE_BITS, 0x18, -1, -1, -1, -1 },
    { "TAG_TYPE_MASK", "I", .constantValue.asInt = ComGoogleProtobufNanoWireFormatNano_TAG_TYPE_MASK, 0x18, -1, -1, -1, -1 },
    { "EMPTY_INT_ARRAY", "[I", .constantValue.asLong = 0, 0x19, -1, 9, -1, -1 },
    { "EMPTY_LONG_ARRAY", "[J", .constantValue.asLong = 0, 0x19, -1, 10, -1, -1 },
    { "EMPTY_FLOAT_ARRAY", "[F", .constantValue.asLong = 0, 0x19, -1, 11, -1, -1 },
    { "EMPTY_DOUBLE_ARRAY", "[D", .constantValue.asLong = 0, 0x19, -1, 12, -1, -1 },
    { "EMPTY_BOOLEAN_ARRAY", "[Z", .constantValue.asLong = 0, 0x19, -1, 13, -1, -1 },
    { "EMPTY_STRING_ARRAY", "[LNSString;", .constantValue.asLong = 0, 0x19, -1, 14, -1, -1 },
    { "EMPTY_BYTES_ARRAY", "[[B", .constantValue.asLong = 0, 0x19, -1, 15, -1, -1 },
    { "EMPTY_BYTES", "[B", .constantValue.asLong = 0, 0x19, -1, 16, -1, -1 },
  };
  static const void *ptrTable[] = { "getTagWireType", "I", "getTagFieldNumber", "makeTag", "II", "parseUnknownField", "LComGoogleProtobufNanoCodedInputByteBufferNano;I", "LJavaIoIOException;", "getRepeatedFieldArrayLength", &ComGoogleProtobufNanoWireFormatNano_EMPTY_INT_ARRAY, &ComGoogleProtobufNanoWireFormatNano_EMPTY_LONG_ARRAY, &ComGoogleProtobufNanoWireFormatNano_EMPTY_FLOAT_ARRAY, &ComGoogleProtobufNanoWireFormatNano_EMPTY_DOUBLE_ARRAY, &ComGoogleProtobufNanoWireFormatNano_EMPTY_BOOLEAN_ARRAY, &ComGoogleProtobufNanoWireFormatNano_EMPTY_STRING_ARRAY, &ComGoogleProtobufNanoWireFormatNano_EMPTY_BYTES_ARRAY, &ComGoogleProtobufNanoWireFormatNano_EMPTY_BYTES };
  static const J2ObjcClassInfo _ComGoogleProtobufNanoWireFormatNano = { "WireFormatNano", "com.google.protobuf.nano", ptrTable, methods, fields, 7, 0x11, 6, 16, -1, -1, -1, -1, -1 };
  return &_ComGoogleProtobufNanoWireFormatNano;
}

+ (void)initialize {
  if (self == [ComGoogleProtobufNanoWireFormatNano class]) {
    JreStrongAssignAndConsume(&ComGoogleProtobufNanoWireFormatNano_EMPTY_INT_ARRAY, [IOSIntArray newArrayWithInts:(jint[]){  } count:0]);
    JreStrongAssignAndConsume(&ComGoogleProtobufNanoWireFormatNano_EMPTY_LONG_ARRAY, [IOSLongArray newArrayWithLongs:(jlong[]){  } count:0]);
    JreStrongAssignAndConsume(&ComGoogleProtobufNanoWireFormatNano_EMPTY_FLOAT_ARRAY, [IOSFloatArray newArrayWithFloats:(jfloat[]){  } count:0]);
    JreStrongAssignAndConsume(&ComGoogleProtobufNanoWireFormatNano_EMPTY_DOUBLE_ARRAY, [IOSDoubleArray newArrayWithDoubles:(jdouble[]){  } count:0]);
    JreStrongAssignAndConsume(&ComGoogleProtobufNanoWireFormatNano_EMPTY_BOOLEAN_ARRAY, [IOSBooleanArray newArrayWithBooleans:(jboolean[]){  } count:0]);
    JreStrongAssignAndConsume(&ComGoogleProtobufNanoWireFormatNano_EMPTY_STRING_ARRAY, [IOSObjectArray newArrayWithObjects:(id[]){  } count:0 type:NSString_class_()]);
    JreStrongAssignAndConsume(&ComGoogleProtobufNanoWireFormatNano_EMPTY_BYTES_ARRAY, [IOSObjectArray newArrayWithObjects:(id[]){  } count:0 type:IOSClass_byteArray(1)]);
    JreStrongAssignAndConsume(&ComGoogleProtobufNanoWireFormatNano_EMPTY_BYTES, [IOSByteArray newArrayWithBytes:(jbyte[]){  } count:0]);
    J2OBJC_SET_INITIALIZED(ComGoogleProtobufNanoWireFormatNano)
  }
}

@end

void ComGoogleProtobufNanoWireFormatNano_init(ComGoogleProtobufNanoWireFormatNano *self) {
  NSObject_init(self);
}

ComGoogleProtobufNanoWireFormatNano *new_ComGoogleProtobufNanoWireFormatNano_init() {
  J2OBJC_NEW_IMPL(ComGoogleProtobufNanoWireFormatNano, init)
}

ComGoogleProtobufNanoWireFormatNano *create_ComGoogleProtobufNanoWireFormatNano_init() {
  J2OBJC_CREATE_IMPL(ComGoogleProtobufNanoWireFormatNano, init)
}

jint ComGoogleProtobufNanoWireFormatNano_getTagWireTypeWithInt_(jint tag) {
  ComGoogleProtobufNanoWireFormatNano_initialize();
  return tag & ComGoogleProtobufNanoWireFormatNano_TAG_TYPE_MASK;
}

jint ComGoogleProtobufNanoWireFormatNano_getTagFieldNumberWithInt_(jint tag) {
  ComGoogleProtobufNanoWireFormatNano_initialize();
  return JreURShift32(tag, ComGoogleProtobufNanoWireFormatNano_TAG_TYPE_BITS);
}

jint ComGoogleProtobufNanoWireFormatNano_makeTagWithInt_withInt_(jint fieldNumber, jint wireType) {
  ComGoogleProtobufNanoWireFormatNano_initialize();
  return (JreLShift32(fieldNumber, ComGoogleProtobufNanoWireFormatNano_TAG_TYPE_BITS)) | wireType;
}

jboolean ComGoogleProtobufNanoWireFormatNano_parseUnknownFieldWithComGoogleProtobufNanoCodedInputByteBufferNano_withInt_(ComGoogleProtobufNanoCodedInputByteBufferNano *input, jint tag) {
  ComGoogleProtobufNanoWireFormatNano_initialize();
  return [((ComGoogleProtobufNanoCodedInputByteBufferNano *) nil_chk(input)) skipFieldWithInt:tag];
}

jint ComGoogleProtobufNanoWireFormatNano_getRepeatedFieldArrayLengthWithComGoogleProtobufNanoCodedInputByteBufferNano_withInt_(ComGoogleProtobufNanoCodedInputByteBufferNano *input, jint tag) {
  ComGoogleProtobufNanoWireFormatNano_initialize();
  jint arrayLength = 1;
  jint startPos = [((ComGoogleProtobufNanoCodedInputByteBufferNano *) nil_chk(input)) getPosition];
  [input skipFieldWithInt:tag];
  while ([input readTag] == tag) {
    [input skipFieldWithInt:tag];
    arrayLength++;
  }
  [input rewindToPositionWithInt:startPos];
  return arrayLength;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleProtobufNanoWireFormatNano)
