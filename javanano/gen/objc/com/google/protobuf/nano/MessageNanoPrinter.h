//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/protobuf/javanano/src/main/java/com/google/protobuf/nano/MessageNanoPrinter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_ComGoogleProtobufNanoMessageNanoPrinter")
#ifdef RESTRICT_ComGoogleProtobufNanoMessageNanoPrinter
#define INCLUDE_ALL_ComGoogleProtobufNanoMessageNanoPrinter 0
#else
#define INCLUDE_ALL_ComGoogleProtobufNanoMessageNanoPrinter 1
#endif
#undef RESTRICT_ComGoogleProtobufNanoMessageNanoPrinter

#if !defined (ComGoogleProtobufNanoMessageNanoPrinter_) && (INCLUDE_ALL_ComGoogleProtobufNanoMessageNanoPrinter || defined(INCLUDE_ComGoogleProtobufNanoMessageNanoPrinter))
#define ComGoogleProtobufNanoMessageNanoPrinter_

@class ComGoogleProtobufNanoMessageNano;

/*!
 @brief Static helper methods for printing nano protos.
 @author flynn@@google.com Andrew Flynn
 */
@interface ComGoogleProtobufNanoMessageNanoPrinter : NSObject

#pragma mark Public

/*!
 @brief Returns an text representation of a MessageNano suitable for debugging.The returned string
  is mostly compatible with Protocol Buffer's TextFormat (as provided by non-nano protocol
  buffers) -- groups (which are deprecated) are output with an underscore name (e.g. foo_bar
  instead of FooBar) and will thus not parse.
 <p>Employs Java reflection on the given object and recursively prints primitive fields,
  groups, and messages.</p>
 */
+ (NSString *)printWithComGoogleProtobufNanoMessageNano:(ComGoogleProtobufNanoMessageNano *)message;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleProtobufNanoMessageNanoPrinter)

FOUNDATION_EXPORT NSString *ComGoogleProtobufNanoMessageNanoPrinter_printWithComGoogleProtobufNanoMessageNano_(ComGoogleProtobufNanoMessageNano *message);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleProtobufNanoMessageNanoPrinter)

#endif

#pragma pop_macro("INCLUDE_ALL_ComGoogleProtobufNanoMessageNanoPrinter")