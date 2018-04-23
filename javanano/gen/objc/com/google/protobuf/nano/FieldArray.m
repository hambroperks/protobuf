//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/protobuf/javanano/src/main/java/com/google/protobuf/nano/FieldArray.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "com/google/protobuf/nano/FieldArray.h"
#include "com/google/protobuf/nano/FieldData.h"
#include "java/lang/System.h"

@interface ComGoogleProtobufNanoFieldArray () {
 @public
  jboolean mGarbage_;
  IOSIntArray *mFieldNumbers_;
  IOSObjectArray *mData_;
  jint mSize_;
}

- (void)gc;

- (jint)idealIntArraySizeWithInt:(jint)need;

- (jint)idealByteArraySizeWithInt:(jint)need;

- (jint)binarySearchWithInt:(jint)value;

- (jboolean)arrayEqualsWithIntArray:(IOSIntArray *)a
                       withIntArray:(IOSIntArray *)b
                            withInt:(jint)size;

- (jboolean)arrayEqualsWithComGoogleProtobufNanoFieldDataArray:(IOSObjectArray *)a
                       withComGoogleProtobufNanoFieldDataArray:(IOSObjectArray *)b
                                                       withInt:(jint)size;

@end

J2OBJC_FIELD_SETTER(ComGoogleProtobufNanoFieldArray, mFieldNumbers_, IOSIntArray *)
J2OBJC_FIELD_SETTER(ComGoogleProtobufNanoFieldArray, mData_, IOSObjectArray *)

inline ComGoogleProtobufNanoFieldData *ComGoogleProtobufNanoFieldArray_get_DELETED(void);
static ComGoogleProtobufNanoFieldData *ComGoogleProtobufNanoFieldArray_DELETED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(ComGoogleProtobufNanoFieldArray, DELETED, ComGoogleProtobufNanoFieldData *)

__attribute__((unused)) static void ComGoogleProtobufNanoFieldArray_gc(ComGoogleProtobufNanoFieldArray *self);

__attribute__((unused)) static jint ComGoogleProtobufNanoFieldArray_idealIntArraySizeWithInt_(ComGoogleProtobufNanoFieldArray *self, jint need);

__attribute__((unused)) static jint ComGoogleProtobufNanoFieldArray_idealByteArraySizeWithInt_(ComGoogleProtobufNanoFieldArray *self, jint need);

__attribute__((unused)) static jint ComGoogleProtobufNanoFieldArray_binarySearchWithInt_(ComGoogleProtobufNanoFieldArray *self, jint value);

__attribute__((unused)) static jboolean ComGoogleProtobufNanoFieldArray_arrayEqualsWithIntArray_withIntArray_withInt_(ComGoogleProtobufNanoFieldArray *self, IOSIntArray *a, IOSIntArray *b, jint size);

__attribute__((unused)) static jboolean ComGoogleProtobufNanoFieldArray_arrayEqualsWithComGoogleProtobufNanoFieldDataArray_withComGoogleProtobufNanoFieldDataArray_withInt_(ComGoogleProtobufNanoFieldArray *self, IOSObjectArray *a, IOSObjectArray *b, jint size);

J2OBJC_INITIALIZED_DEFN(ComGoogleProtobufNanoFieldArray)

@implementation ComGoogleProtobufNanoFieldArray

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleProtobufNanoFieldArray_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithInt:(jint)initialCapacity {
  ComGoogleProtobufNanoFieldArray_initWithInt_(self, initialCapacity);
  return self;
}

- (ComGoogleProtobufNanoFieldData *)getWithInt:(jint)fieldNumber {
  jint i = ComGoogleProtobufNanoFieldArray_binarySearchWithInt_(self, fieldNumber);
  if (i < 0 || IOSObjectArray_Get(nil_chk(mData_), i) == ComGoogleProtobufNanoFieldArray_DELETED) {
    return nil;
  }
  else {
    return IOSObjectArray_Get(nil_chk(mData_), i);
  }
}

- (void)removeWithInt:(jint)fieldNumber {
  jint i = ComGoogleProtobufNanoFieldArray_binarySearchWithInt_(self, fieldNumber);
  if (i >= 0 && IOSObjectArray_Get(nil_chk(mData_), i) != ComGoogleProtobufNanoFieldArray_DELETED) {
    IOSObjectArray_Set(nil_chk(mData_), i, ComGoogleProtobufNanoFieldArray_DELETED);
    mGarbage_ = true;
  }
}

- (void)gc {
  ComGoogleProtobufNanoFieldArray_gc(self);
}

- (void)putWithInt:(jint)fieldNumber
withComGoogleProtobufNanoFieldData:(ComGoogleProtobufNanoFieldData *)data {
  jint i = ComGoogleProtobufNanoFieldArray_binarySearchWithInt_(self, fieldNumber);
  if (i >= 0) {
    IOSObjectArray_Set(nil_chk(mData_), i, data);
  }
  else {
    i = ~i;
    if (i < mSize_ && IOSObjectArray_Get(nil_chk(mData_), i) == ComGoogleProtobufNanoFieldArray_DELETED) {
      *IOSIntArray_GetRef(nil_chk(mFieldNumbers_), i) = fieldNumber;
      IOSObjectArray_Set(nil_chk(mData_), i, data);
      return;
    }
    if (mGarbage_ && mSize_ >= ((IOSIntArray *) nil_chk(mFieldNumbers_))->size_) {
      ComGoogleProtobufNanoFieldArray_gc(self);
      i = ~ComGoogleProtobufNanoFieldArray_binarySearchWithInt_(self, fieldNumber);
    }
    if (mSize_ >= ((IOSIntArray *) nil_chk(mFieldNumbers_))->size_) {
      jint n = ComGoogleProtobufNanoFieldArray_idealIntArraySizeWithInt_(self, mSize_ + 1);
      IOSIntArray *nkeys = [IOSIntArray arrayWithLength:n];
      IOSObjectArray *nvalues = [IOSObjectArray arrayWithLength:n type:ComGoogleProtobufNanoFieldData_class_()];
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(mFieldNumbers_, 0, nkeys, 0, ((IOSIntArray *) nil_chk(mFieldNumbers_))->size_);
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(mData_, 0, nvalues, 0, ((IOSObjectArray *) nil_chk(mData_))->size_);
      JreStrongAssign(&mFieldNumbers_, nkeys);
      JreStrongAssign(&mData_, nvalues);
    }
    if (mSize_ - i != 0) {
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(mFieldNumbers_, i, mFieldNumbers_, i + 1, mSize_ - i);
      JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(mData_, i, mData_, i + 1, mSize_ - i);
    }
    *IOSIntArray_GetRef(nil_chk(mFieldNumbers_), i) = fieldNumber;
    IOSObjectArray_Set(nil_chk(mData_), i, data);
    mSize_++;
  }
}

- (jint)size {
  if (mGarbage_) {
    ComGoogleProtobufNanoFieldArray_gc(self);
  }
  return mSize_;
}

- (jboolean)isEmpty {
  return [self size] == 0;
}

- (ComGoogleProtobufNanoFieldData *)dataAtWithInt:(jint)index {
  if (mGarbage_) {
    ComGoogleProtobufNanoFieldArray_gc(self);
  }
  return IOSObjectArray_Get(nil_chk(mData_), index);
}

- (jboolean)isEqual:(id)o {
  if (o == self) {
    return true;
  }
  if (!([o isKindOfClass:[ComGoogleProtobufNanoFieldArray class]])) {
    return false;
  }
  ComGoogleProtobufNanoFieldArray *other = (ComGoogleProtobufNanoFieldArray *) cast_chk(o, [ComGoogleProtobufNanoFieldArray class]);
  if ([self size] != [((ComGoogleProtobufNanoFieldArray *) nil_chk(other)) size]) {
    return false;
  }
  return ComGoogleProtobufNanoFieldArray_arrayEqualsWithIntArray_withIntArray_withInt_(self, mFieldNumbers_, other->mFieldNumbers_, mSize_) && ComGoogleProtobufNanoFieldArray_arrayEqualsWithComGoogleProtobufNanoFieldDataArray_withComGoogleProtobufNanoFieldDataArray_withInt_(self, mData_, other->mData_, mSize_);
}

- (NSUInteger)hash {
  if (mGarbage_) {
    ComGoogleProtobufNanoFieldArray_gc(self);
  }
  jint result = 17;
  for (jint i = 0; i < mSize_; i++) {
    result = 31 * result + IOSIntArray_Get(nil_chk(mFieldNumbers_), i);
    result = 31 * result + ((jint) [((ComGoogleProtobufNanoFieldData *) nil_chk(IOSObjectArray_Get(nil_chk(mData_), i))) hash]);
  }
  return result;
}

- (jint)idealIntArraySizeWithInt:(jint)need {
  return ComGoogleProtobufNanoFieldArray_idealIntArraySizeWithInt_(self, need);
}

- (jint)idealByteArraySizeWithInt:(jint)need {
  return ComGoogleProtobufNanoFieldArray_idealByteArraySizeWithInt_(self, need);
}

- (jint)binarySearchWithInt:(jint)value {
  return ComGoogleProtobufNanoFieldArray_binarySearchWithInt_(self, value);
}

- (jboolean)arrayEqualsWithIntArray:(IOSIntArray *)a
                       withIntArray:(IOSIntArray *)b
                            withInt:(jint)size {
  return ComGoogleProtobufNanoFieldArray_arrayEqualsWithIntArray_withIntArray_withInt_(self, a, b, size);
}

- (jboolean)arrayEqualsWithComGoogleProtobufNanoFieldDataArray:(IOSObjectArray *)a
                       withComGoogleProtobufNanoFieldDataArray:(IOSObjectArray *)b
                                                       withInt:(jint)size {
  return ComGoogleProtobufNanoFieldArray_arrayEqualsWithComGoogleProtobufNanoFieldDataArray_withComGoogleProtobufNanoFieldDataArray_withInt_(self, a, b, size);
}

- (ComGoogleProtobufNanoFieldArray *)java_clone {
  jint size = [self size];
  ComGoogleProtobufNanoFieldArray *clone = create_ComGoogleProtobufNanoFieldArray_initWithInt_(size);
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(mFieldNumbers_, 0, clone->mFieldNumbers_, 0, size);
  for (jint i = 0; i < size; i++) {
    if (IOSObjectArray_Get(nil_chk(mData_), i) != nil) {
      IOSObjectArray_Set(clone->mData_, i, [((ComGoogleProtobufNanoFieldData *) nil_chk(IOSObjectArray_Get(mData_, i))) java_clone]);
    }
  }
  clone->mSize_ = size;
  return clone;
}

- (void)dealloc {
  RELEASE_(mFieldNumbers_);
  RELEASE_(mData_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LComGoogleProtobufNanoFieldData;", 0x0, 1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 2, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x0, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LComGoogleProtobufNanoFieldData;", 0x0, 5, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 6, 7, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 8, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 9, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 10, 0, -1, -1, -1, -1 },
    { NULL, "I", 0x2, 11, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 12, 13, -1, -1, -1, -1 },
    { NULL, "Z", 0x2, 12, 14, -1, -1, -1, -1 },
    { NULL, "LComGoogleProtobufNanoFieldArray;", 0x11, 15, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(initWithInt:);
  methods[2].selector = @selector(getWithInt:);
  methods[3].selector = @selector(removeWithInt:);
  methods[4].selector = @selector(gc);
  methods[5].selector = @selector(putWithInt:withComGoogleProtobufNanoFieldData:);
  methods[6].selector = @selector(size);
  methods[7].selector = @selector(isEmpty);
  methods[8].selector = @selector(dataAtWithInt:);
  methods[9].selector = @selector(isEqual:);
  methods[10].selector = @selector(hash);
  methods[11].selector = @selector(idealIntArraySizeWithInt:);
  methods[12].selector = @selector(idealByteArraySizeWithInt:);
  methods[13].selector = @selector(binarySearchWithInt:);
  methods[14].selector = @selector(arrayEqualsWithIntArray:withIntArray:withInt:);
  methods[15].selector = @selector(arrayEqualsWithComGoogleProtobufNanoFieldDataArray:withComGoogleProtobufNanoFieldDataArray:withInt:);
  methods[16].selector = @selector(java_clone);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "DELETED", "LComGoogleProtobufNanoFieldData;", .constantValue.asLong = 0, 0x1a, -1, 16, -1, -1 },
    { "mGarbage_", "Z", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mFieldNumbers_", "[I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mData_", "[LComGoogleProtobufNanoFieldData;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "mSize_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "I", "get", "remove", "put", "ILComGoogleProtobufNanoFieldData;", "dataAt", "equals", "LNSObject;", "hashCode", "idealIntArraySize", "idealByteArraySize", "binarySearch", "arrayEquals", "[I[II", "[LComGoogleProtobufNanoFieldData;[LComGoogleProtobufNanoFieldData;I", "clone", &ComGoogleProtobufNanoFieldArray_DELETED };
  static const J2ObjcClassInfo _ComGoogleProtobufNanoFieldArray = { "FieldArray", "com.google.protobuf.nano", ptrTable, methods, fields, 7, 0x11, 17, 5, -1, -1, -1, -1, -1 };
  return &_ComGoogleProtobufNanoFieldArray;
}

- (id)copyWithZone:(NSZone *)zone {
  return [[self java_clone] retain];
}

+ (void)initialize {
  if (self == [ComGoogleProtobufNanoFieldArray class]) {
    JreStrongAssignAndConsume(&ComGoogleProtobufNanoFieldArray_DELETED, new_ComGoogleProtobufNanoFieldData_init());
    J2OBJC_SET_INITIALIZED(ComGoogleProtobufNanoFieldArray)
  }
}

@end

void ComGoogleProtobufNanoFieldArray_init(ComGoogleProtobufNanoFieldArray *self) {
  ComGoogleProtobufNanoFieldArray_initWithInt_(self, 10);
}

ComGoogleProtobufNanoFieldArray *new_ComGoogleProtobufNanoFieldArray_init() {
  J2OBJC_NEW_IMPL(ComGoogleProtobufNanoFieldArray, init)
}

ComGoogleProtobufNanoFieldArray *create_ComGoogleProtobufNanoFieldArray_init() {
  J2OBJC_CREATE_IMPL(ComGoogleProtobufNanoFieldArray, init)
}

void ComGoogleProtobufNanoFieldArray_initWithInt_(ComGoogleProtobufNanoFieldArray *self, jint initialCapacity) {
  NSObject_init(self);
  self->mGarbage_ = false;
  initialCapacity = ComGoogleProtobufNanoFieldArray_idealIntArraySizeWithInt_(self, initialCapacity);
  JreStrongAssignAndConsume(&self->mFieldNumbers_, [IOSIntArray newArrayWithLength:initialCapacity]);
  JreStrongAssignAndConsume(&self->mData_, [IOSObjectArray newArrayWithLength:initialCapacity type:ComGoogleProtobufNanoFieldData_class_()]);
  self->mSize_ = 0;
}

ComGoogleProtobufNanoFieldArray *new_ComGoogleProtobufNanoFieldArray_initWithInt_(jint initialCapacity) {
  J2OBJC_NEW_IMPL(ComGoogleProtobufNanoFieldArray, initWithInt_, initialCapacity)
}

ComGoogleProtobufNanoFieldArray *create_ComGoogleProtobufNanoFieldArray_initWithInt_(jint initialCapacity) {
  J2OBJC_CREATE_IMPL(ComGoogleProtobufNanoFieldArray, initWithInt_, initialCapacity)
}

void ComGoogleProtobufNanoFieldArray_gc(ComGoogleProtobufNanoFieldArray *self) {
  jint n = self->mSize_;
  jint o = 0;
  IOSIntArray *keys = self->mFieldNumbers_;
  IOSObjectArray *values = self->mData_;
  for (jint i = 0; i < n; i++) {
    ComGoogleProtobufNanoFieldData *val = IOSObjectArray_Get(nil_chk(values), i);
    if (val != ComGoogleProtobufNanoFieldArray_DELETED) {
      if (i != o) {
        *IOSIntArray_GetRef(nil_chk(keys), o) = IOSIntArray_Get(keys, i);
        IOSObjectArray_Set(values, o, val);
        IOSObjectArray_Set(values, i, nil);
      }
      o++;
    }
  }
  self->mGarbage_ = false;
  self->mSize_ = o;
}

jint ComGoogleProtobufNanoFieldArray_idealIntArraySizeWithInt_(ComGoogleProtobufNanoFieldArray *self, jint need) {
  return ComGoogleProtobufNanoFieldArray_idealByteArraySizeWithInt_(self, need * 4) / 4;
}

jint ComGoogleProtobufNanoFieldArray_idealByteArraySizeWithInt_(ComGoogleProtobufNanoFieldArray *self, jint need) {
  for (jint i = 4; i < 32; i++) if (need <= (JreLShift32(1, i)) - 12) return (JreLShift32(1, i)) - 12;
  return need;
}

jint ComGoogleProtobufNanoFieldArray_binarySearchWithInt_(ComGoogleProtobufNanoFieldArray *self, jint value) {
  jint lo = 0;
  jint hi = self->mSize_ - 1;
  while (lo <= hi) {
    jint mid = JreURShift32((lo + hi), 1);
    jint midVal = IOSIntArray_Get(nil_chk(self->mFieldNumbers_), mid);
    if (midVal < value) {
      lo = mid + 1;
    }
    else if (midVal > value) {
      hi = mid - 1;
    }
    else {
      return mid;
    }
  }
  return ~lo;
}

jboolean ComGoogleProtobufNanoFieldArray_arrayEqualsWithIntArray_withIntArray_withInt_(ComGoogleProtobufNanoFieldArray *self, IOSIntArray *a, IOSIntArray *b, jint size) {
  for (jint i = 0; i < size; i++) {
    if (IOSIntArray_Get(nil_chk(a), i) != IOSIntArray_Get(nil_chk(b), i)) {
      return false;
    }
  }
  return true;
}

jboolean ComGoogleProtobufNanoFieldArray_arrayEqualsWithComGoogleProtobufNanoFieldDataArray_withComGoogleProtobufNanoFieldDataArray_withInt_(ComGoogleProtobufNanoFieldArray *self, IOSObjectArray *a, IOSObjectArray *b, jint size) {
  for (jint i = 0; i < size; i++) {
    if (![((ComGoogleProtobufNanoFieldData *) nil_chk(IOSObjectArray_Get(nil_chk(a), i))) isEqual:IOSObjectArray_Get(nil_chk(b), i)]) {
      return false;
    }
  }
  return true;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleProtobufNanoFieldArray)
